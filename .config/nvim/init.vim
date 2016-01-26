set nocompatible

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'sjl/badwolf'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'

call plug#end()

syntax on
set t_Co=256
colorscheme badwolf

set history=1000

set backupdir=/var/tmp//,/tmp//
set directory=/var/tmp//,/tmp//

set wildmenu
set wildignore=*.o,*~,*.pyc

set ruler

set number

set ignorecase
set smartcase
set hlsearch
set incsearch

set lazyredraw

set showmatch

set mat=2

set noerrorbells
set novisualbell
set t_vb=
set tm=100

set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

set ai
set si
set wrap

set splitright
set splitbelow

map j gj
map k gk

set viminfo^=%

"set clipboard+=unnamedplus

:inoremap jk <esc>

" badwolf theme settings
let g:badwolf_darkgutter = 1
let g:badwolf_tabline = 0

" airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
set laststatus=2

" NERDTree settings
let NERDTreeIgnore = ['\.o$','\.map$','\.res$']
