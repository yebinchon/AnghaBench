
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_mapping; } ;
struct fscrypt_str {int dummy; } ;
struct file_ra_state {int dummy; } ;
struct file {struct file_ra_state f_ra; } ;
struct f2fs_dentry_ptr {int dummy; } ;
struct f2fs_dentry_block {int dummy; } ;
struct dir_context {unsigned int pos; } ;
typedef int pgoff_t ;
typedef unsigned int loff_t ;


 int ENOENT ;
 int ENOKEY ;
 int ERESTARTSYS ;
 int F2FS_NAME_LEN ;
 struct fscrypt_str FSTR_INIT (int *,int ) ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ MAX_DIR_RA_PAGES ;
 unsigned long NR_DENTRY_IN_BLOCK ;
 int PTR_ERR (struct page*) ;
 int cond_resched () ;
 int current ;
 unsigned long dir_blocks (struct inode*) ;
 int f2fs_fill_dentries (struct dir_context*,struct f2fs_dentry_ptr*,unsigned int,struct fscrypt_str*) ;
 struct page* f2fs_find_data_page (struct inode*,unsigned int) ;
 scalar_t__ f2fs_has_inline_dentry (struct inode*) ;
 int f2fs_put_page (struct page*,int ) ;
 int f2fs_read_inline_dir (struct file*,struct dir_context*,struct fscrypt_str*) ;
 scalar_t__ fatal_signal_pending (int ) ;
 struct inode* file_inode (struct file*) ;
 int fscrypt_fname_alloc_buffer (struct inode*,int ,struct fscrypt_str*) ;
 int fscrypt_fname_free_buffer (struct fscrypt_str*) ;
 int fscrypt_get_encryption_info (struct inode*) ;
 int make_dentry_ptr_block (struct inode*,struct f2fs_dentry_ptr*,struct f2fs_dentry_block*) ;
 int min (unsigned long,int ) ;
 struct f2fs_dentry_block* page_address (struct page*) ;
 int page_cache_sync_readahead (int ,struct file_ra_state*,struct file*,unsigned int,int ) ;
 int ra_has_index (struct file_ra_state*,unsigned int) ;
 int trace_f2fs_readdir (struct inode*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int f2fs_readdir(struct file *file, struct dir_context *ctx)
{
 struct inode *inode = file_inode(file);
 unsigned long npages = dir_blocks(inode);
 struct f2fs_dentry_block *dentry_blk = ((void*)0);
 struct page *dentry_page = ((void*)0);
 struct file_ra_state *ra = &file->f_ra;
 loff_t start_pos = ctx->pos;
 unsigned int n = ((unsigned long)ctx->pos / NR_DENTRY_IN_BLOCK);
 struct f2fs_dentry_ptr d;
 struct fscrypt_str fstr = FSTR_INIT(((void*)0), 0);
 int err = 0;

 if (IS_ENCRYPTED(inode)) {
  err = fscrypt_get_encryption_info(inode);
  if (err && err != -ENOKEY)
   goto out;

  err = fscrypt_fname_alloc_buffer(inode, F2FS_NAME_LEN, &fstr);
  if (err < 0)
   goto out;
 }

 if (f2fs_has_inline_dentry(inode)) {
  err = f2fs_read_inline_dir(file, ctx, &fstr);
  goto out_free;
 }

 for (; n < npages; n++, ctx->pos = n * NR_DENTRY_IN_BLOCK) {


  if (fatal_signal_pending(current)) {
   err = -ERESTARTSYS;
   goto out_free;
  }
  cond_resched();


  if (npages - n > 1 && !ra_has_index(ra, n))
   page_cache_sync_readahead(inode->i_mapping, ra, file, n,
    min(npages - n, (pgoff_t)MAX_DIR_RA_PAGES));

  dentry_page = f2fs_find_data_page(inode, n);
  if (IS_ERR(dentry_page)) {
   err = PTR_ERR(dentry_page);
   if (err == -ENOENT) {
    err = 0;
    continue;
   } else {
    goto out_free;
   }
  }

  dentry_blk = page_address(dentry_page);

  make_dentry_ptr_block(inode, &d, dentry_blk);

  err = f2fs_fill_dentries(ctx, &d,
    n * NR_DENTRY_IN_BLOCK, &fstr);
  if (err) {
   f2fs_put_page(dentry_page, 0);
   break;
  }

  f2fs_put_page(dentry_page, 0);
 }
out_free:
 fscrypt_fname_free_buffer(&fstr);
out:
 trace_f2fs_readdir(inode, start_pos, ctx->pos, err);
 return err < 0 ? err : 0;
}
