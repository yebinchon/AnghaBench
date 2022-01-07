
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_mtime; } ;
struct TYPE_3__ {int size; scalar_t__ iversion; scalar_t__ version; int lock; int mtime; int cached; } ;
struct fuse_inode {TYPE_1__ rdc; } ;
struct TYPE_4__ {scalar_t__ pos; int cache_off; scalar_t__ version; } ;
struct fuse_file {TYPE_2__ readdir; } ;
struct fuse_conn {scalar_t__ auto_inval_data; } ;
struct file {int f_mapping; struct fuse_file* private_data; } ;
struct dir_context {scalar_t__ pos; } ;
typedef int pgoff_t ;
typedef enum fuse_parse_result { ____Placeholder_fuse_parse_result } fuse_parse_result ;


 unsigned int ALIGN (unsigned int,unsigned int) ;
 int EIO ;
 int FGP_ACCESSED ;
 int FGP_LOCK ;
 int FOUND_ALL ;
 int FOUND_ERR ;
 int FOUND_SOME ;
 unsigned int PAGE_MASK ;
 int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int UNCACHED ;
 int WARN_ON (int) ;
 struct inode* file_inode (struct file*) ;
 struct page* find_get_page_flags (int ,int,int) ;
 int fuse_parse_cache (struct fuse_file*,void*,unsigned int,struct dir_context*) ;
 int fuse_rdc_reset (struct inode*) ;
 int fuse_update_attributes (struct inode*,struct file*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 scalar_t__ inode_peek_iversion (struct inode*) ;
 scalar_t__ inode_query_iversion (struct inode*) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int put_page (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timespec64_equal (int *,int *) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int fuse_readdir_cached(struct file *file, struct dir_context *ctx)
{
 struct fuse_file *ff = file->private_data;
 struct inode *inode = file_inode(file);
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_inode *fi = get_fuse_inode(inode);
 enum fuse_parse_result res;
 pgoff_t index;
 unsigned int size;
 struct page *page;
 void *addr;


 if (ff->readdir.pos != ctx->pos) {
  ff->readdir.pos = 0;
  ff->readdir.cache_off = 0;
 }





 if (!ctx->pos && fc->auto_inval_data) {
  int err = fuse_update_attributes(inode, file);

  if (err)
   return err;
 }

retry:
 spin_lock(&fi->rdc.lock);
retry_locked:
 if (!fi->rdc.cached) {

  if (!ctx->pos && !fi->rdc.size) {
   fi->rdc.mtime = inode->i_mtime;
   fi->rdc.iversion = inode_query_iversion(inode);
  }
  spin_unlock(&fi->rdc.lock);
  return UNCACHED;
 }





 if (!ctx->pos) {
  if (inode_peek_iversion(inode) != fi->rdc.iversion ||
      !timespec64_equal(&fi->rdc.mtime, &inode->i_mtime)) {
   fuse_rdc_reset(inode);
   goto retry_locked;
  }
 }





 if (ff->readdir.version != fi->rdc.version) {
  ff->readdir.pos = 0;
  ff->readdir.cache_off = 0;
 }




 if (ff->readdir.pos == 0)
  ff->readdir.version = fi->rdc.version;

 WARN_ON(fi->rdc.size < ff->readdir.cache_off);

 index = ff->readdir.cache_off >> PAGE_SHIFT;

 if (index == (fi->rdc.size >> PAGE_SHIFT))
  size = fi->rdc.size & ~PAGE_MASK;
 else
  size = PAGE_SIZE;
 spin_unlock(&fi->rdc.lock);


 if ((ff->readdir.cache_off & ~PAGE_MASK) == size)
  return 0;

 page = find_get_page_flags(file->f_mapping, index,
       FGP_ACCESSED | FGP_LOCK);
 spin_lock(&fi->rdc.lock);
 if (!page) {



  if (fi->rdc.version == ff->readdir.version)
   fuse_rdc_reset(inode);
  goto retry_locked;
 }


 if (ff->readdir.version != fi->rdc.version) {
  spin_unlock(&fi->rdc.lock);
  unlock_page(page);
  put_page(page);
  goto retry;
 }
 spin_unlock(&fi->rdc.lock);





 addr = kmap(page);
 res = fuse_parse_cache(ff, addr, size, ctx);
 kunmap(page);
 unlock_page(page);
 put_page(page);

 if (res == FOUND_ERR)
  return -EIO;

 if (res == FOUND_ALL)
  return 0;

 if (size == PAGE_SIZE) {

  ff->readdir.cache_off = ALIGN(ff->readdir.cache_off, PAGE_SIZE);
  goto retry;
 }






 return res == FOUND_SOME ? 0 : UNCACHED;
}
