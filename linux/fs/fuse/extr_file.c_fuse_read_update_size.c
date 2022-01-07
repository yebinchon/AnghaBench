
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct inode {scalar_t__ i_size; } ;
struct fuse_inode {scalar_t__ attr_version; int lock; int state; } ;
struct fuse_conn {int attr_version; } ;
typedef scalar_t__ loff_t ;


 int FUSE_I_SIZE_UNSTABLE ;
 scalar_t__ atomic64_inc_return (int *) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void fuse_read_update_size(struct inode *inode, loff_t size,
      u64 attr_ver)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_inode *fi = get_fuse_inode(inode);

 spin_lock(&fi->lock);
 if (attr_ver == fi->attr_version && size < inode->i_size &&
     !test_bit(FUSE_I_SIZE_UNSTABLE, &fi->state)) {
  fi->attr_version = atomic64_inc_return(&fc->attr_version);
  i_size_write(inode, size);
 }
 spin_unlock(&fi->lock);
}
