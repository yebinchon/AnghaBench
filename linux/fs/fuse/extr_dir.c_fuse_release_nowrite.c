
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_inode {int lock; } ;


 int __fuse_release_nowrite (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fuse_release_nowrite(struct inode *inode)
{
 struct fuse_inode *fi = get_fuse_inode(inode);

 spin_lock(&fi->lock);
 __fuse_release_nowrite(inode);
 spin_unlock(&fi->lock);
}
