
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct other_inode {int orig_ino; int raw_inode; } ;
struct inode {unsigned long i_ino; int i_state; int i_lock; } ;
struct ext4_inode_info {int i_raw_lock; } ;


 struct ext4_inode_info* EXT4_I (struct inode*) ;
 int EXT4_INODE_SET_XTIME (int ,struct inode*,int ) ;
 int I_DIRTY_INODE ;
 int I_DIRTY_TIME ;
 int I_DIRTY_TIME_EXPIRED ;
 int I_FREEING ;
 int I_NEW ;
 int I_WILL_FREE ;
 int ext4_inode_csum_set (struct inode*,int ,struct ext4_inode_info*) ;
 int i_atime ;
 int i_ctime ;
 int i_mtime ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ext4_other_inode_update_time (struct inode*,int ) ;

__attribute__((used)) static int other_inode_match(struct inode * inode, unsigned long ino,
        void *data)
{
 struct other_inode *oi = (struct other_inode *) data;

 if ((inode->i_ino != ino) ||
     (inode->i_state & (I_FREEING | I_WILL_FREE | I_NEW |
          I_DIRTY_INODE)) ||
     ((inode->i_state & I_DIRTY_TIME) == 0))
  return 0;
 spin_lock(&inode->i_lock);
 if (((inode->i_state & (I_FREEING | I_WILL_FREE | I_NEW |
    I_DIRTY_INODE)) == 0) &&
     (inode->i_state & I_DIRTY_TIME)) {
  struct ext4_inode_info *ei = EXT4_I(inode);

  inode->i_state &= ~(I_DIRTY_TIME | I_DIRTY_TIME_EXPIRED);
  spin_unlock(&inode->i_lock);

  spin_lock(&ei->i_raw_lock);
  EXT4_INODE_SET_XTIME(i_ctime, inode, oi->raw_inode);
  EXT4_INODE_SET_XTIME(i_mtime, inode, oi->raw_inode);
  EXT4_INODE_SET_XTIME(i_atime, inode, oi->raw_inode);
  ext4_inode_csum_set(inode, oi->raw_inode, ei);
  spin_unlock(&ei->i_raw_lock);
  trace_ext4_other_inode_update_time(inode, oi->orig_ino);
  return -1;
 }
 spin_unlock(&inode->i_lock);
 return -1;
}
