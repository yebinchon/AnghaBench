
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_inode {int lock; } ;
typedef int pgoff_t ;


 int fuse_find_writeback (struct fuse_inode*,int ,int ) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool fuse_range_is_writeback(struct inode *inode, pgoff_t idx_from,
       pgoff_t idx_to)
{
 struct fuse_inode *fi = get_fuse_inode(inode);
 bool found;

 spin_lock(&fi->lock);
 found = fuse_find_writeback(fi, idx_from, idx_to);
 spin_unlock(&fi->lock);

 return found;
}
