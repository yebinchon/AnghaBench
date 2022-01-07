
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; } ;
struct fuse_inode {int lock; int attr_version; } ;
struct fuse_conn {int attr_version; } ;
typedef scalar_t__ loff_t ;


 int atomic64_inc_return (int *) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool fuse_write_update_size(struct inode *inode, loff_t pos)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_inode *fi = get_fuse_inode(inode);
 bool ret = 0;

 spin_lock(&fi->lock);
 fi->attr_version = atomic64_inc_return(&fc->attr_version);
 if (pos > inode->i_size) {
  i_size_write(inode, pos);
  ret = 1;
 }
 spin_unlock(&fi->lock);

 return ret;
}
