
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_page_desc {int length; } ;
struct TYPE_2__ {int out_pages; } ;
struct fuse_args_pages {int num_pages; TYPE_1__ args; struct fuse_page_desc* descs; struct page** pages; } ;
struct fuse_io_args {struct fuse_args_pages ap; } ;
struct fuse_file {int open_flags; } ;
struct fuse_conn {int dummy; } ;
struct file {struct fuse_file* private_data; } ;
struct dir_context {int pos; } ;
typedef scalar_t__ ssize_t ;


 int ENOMEM ;
 int FOPEN_CACHE_DIR ;
 int FUSE_READDIR ;
 int FUSE_READDIRPLUS ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 struct inode* file_inode (struct file*) ;
 int fuse_get_attr_version (struct fuse_conn*) ;
 int fuse_invalidate_atime (struct inode*) ;
 int fuse_lock_inode (struct inode*) ;
 int fuse_read_args_fill (struct fuse_io_args*,struct file*,int ,int ,int ) ;
 int fuse_readdir_cache_end (struct file*,int ) ;
 scalar_t__ fuse_simple_request (struct fuse_conn*,TYPE_1__*) ;
 int fuse_unlock_inode (struct inode*,int) ;
 int fuse_use_readdirplus (struct inode*,struct dir_context*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int page_address (struct page*) ;
 scalar_t__ parse_dirfile (int ,scalar_t__,struct file*,struct dir_context*) ;
 scalar_t__ parse_dirplusfile (int ,scalar_t__,struct file*,struct dir_context*,int ) ;

__attribute__((used)) static int fuse_readdir_uncached(struct file *file, struct dir_context *ctx)
{
 int plus;
 ssize_t res;
 struct page *page;
 struct inode *inode = file_inode(file);
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_io_args ia = {};
 struct fuse_args_pages *ap = &ia.ap;
 struct fuse_page_desc desc = { .length = PAGE_SIZE };
 u64 attr_version = 0;
 bool locked;

 page = alloc_page(GFP_KERNEL);
 if (!page)
  return -ENOMEM;

 plus = fuse_use_readdirplus(inode, ctx);
 ap->args.out_pages = 1;
 ap->num_pages = 1;
 ap->pages = &page;
 ap->descs = &desc;
 if (plus) {
  attr_version = fuse_get_attr_version(fc);
  fuse_read_args_fill(&ia, file, ctx->pos, PAGE_SIZE,
        FUSE_READDIRPLUS);
 } else {
  fuse_read_args_fill(&ia, file, ctx->pos, PAGE_SIZE,
        FUSE_READDIR);
 }
 locked = fuse_lock_inode(inode);
 res = fuse_simple_request(fc, &ap->args);
 fuse_unlock_inode(inode, locked);
 if (res >= 0) {
  if (!res) {
   struct fuse_file *ff = file->private_data;

   if (ff->open_flags & FOPEN_CACHE_DIR)
    fuse_readdir_cache_end(file, ctx->pos);
  } else if (plus) {
   res = parse_dirplusfile(page_address(page), res,
      file, ctx, attr_version);
  } else {
   res = parse_dirfile(page_address(page), res, file,
         ctx);
  }
 }

 __free_page(page);
 fuse_invalidate_atime(inode);
 return res;
}
