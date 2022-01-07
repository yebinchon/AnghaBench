
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pos; int cached; int lock; int size; } ;
struct fuse_inode {TYPE_1__ rdc; } ;
struct file {int f_mapping; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ ALIGN (int ,int ) ;
 int PAGE_SIZE ;
 int file_inode (struct file*) ;
 struct fuse_inode* get_fuse_inode (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int truncate_inode_pages (int ,scalar_t__) ;

__attribute__((used)) static void fuse_readdir_cache_end(struct file *file, loff_t pos)
{
 struct fuse_inode *fi = get_fuse_inode(file_inode(file));
 loff_t end;

 spin_lock(&fi->rdc.lock);

 if (fi->rdc.pos != pos) {
  spin_unlock(&fi->rdc.lock);
  return;
 }

 fi->rdc.cached = 1;
 end = ALIGN(fi->rdc.size, PAGE_SIZE);
 spin_unlock(&fi->rdc.lock);


 truncate_inode_pages(file->f_mapping, end);
}
