
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
struct inode {scalar_t__ i_size; int i_mapping; int i_mode; struct timespec64 i_mtime; } ;
struct fuse_inode {scalar_t__ attr_version; int lock; int state; } ;
struct fuse_conn {int writeback_cache; scalar_t__ auto_inval_data; int explicit_inval_data; } ;
struct fuse_attr {scalar_t__ size; int mtimensec; int mtime; } ;
typedef scalar_t__ loff_t ;


 int FUSE_I_SIZE_UNSTABLE ;
 scalar_t__ S_ISREG (int ) ;
 int fuse_change_attributes_common (struct inode*,struct fuse_attr*,scalar_t__) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int invalidate_inode_pages2 (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int timespec64_equal (struct timespec64*,struct timespec64*) ;
 int truncate_pagecache (struct inode*,scalar_t__) ;

void fuse_change_attributes(struct inode *inode, struct fuse_attr *attr,
       u64 attr_valid, u64 attr_version)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_inode *fi = get_fuse_inode(inode);
 bool is_wb = fc->writeback_cache;
 loff_t oldsize;
 struct timespec64 old_mtime;

 spin_lock(&fi->lock);
 if ((attr_version != 0 && fi->attr_version > attr_version) ||
     test_bit(FUSE_I_SIZE_UNSTABLE, &fi->state)) {
  spin_unlock(&fi->lock);
  return;
 }

 old_mtime = inode->i_mtime;
 fuse_change_attributes_common(inode, attr, attr_valid);

 oldsize = inode->i_size;





 if (!is_wb || !S_ISREG(inode->i_mode))
  i_size_write(inode, attr->size);
 spin_unlock(&fi->lock);

 if (!is_wb && S_ISREG(inode->i_mode)) {
  bool inval = 0;

  if (oldsize != attr->size) {
   truncate_pagecache(inode, attr->size);
   if (!fc->explicit_inval_data)
    inval = 1;
  } else if (fc->auto_inval_data) {
   struct timespec64 new_mtime = {
    .tv_sec = attr->mtime,
    .tv_nsec = attr->mtimensec,
   };





   if (!timespec64_equal(&old_mtime, &new_mtime))
    inval = 1;
  }

  if (inval)
   invalidate_inode_pages2(inode->i_mapping);
 }
}
