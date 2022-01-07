
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_inode_lock; } ;
struct nilfs_inode_info {int i_state; int i_dirty; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct the_nilfs* s_fs_info; } ;


 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_I_BUSY ;
 int NILFS_I_DIRTY ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int nilfs_inode_dirty(struct inode *inode)
{
 struct nilfs_inode_info *ii = NILFS_I(inode);
 struct the_nilfs *nilfs = inode->i_sb->s_fs_info;
 int ret = 0;

 if (!list_empty(&ii->i_dirty)) {
  spin_lock(&nilfs->ns_inode_lock);
  ret = test_bit(NILFS_I_DIRTY, &ii->i_state) ||
   test_bit(NILFS_I_BUSY, &ii->i_state);
  spin_unlock(&nilfs->ns_inode_lock);
 }
 return ret;
}
