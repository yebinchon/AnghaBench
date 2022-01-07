
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct the_nilfs {int ns_inode_lock; } ;
struct nilfs_inode_info {struct buffer_head* i_bh; TYPE_2__* i_root; } ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int ifile; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;


 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 int nilfs_ifile_get_inode_block (int ,int ,struct buffer_head**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int nilfs_load_inode_block(struct inode *inode, struct buffer_head **pbh)
{
 struct the_nilfs *nilfs = inode->i_sb->s_fs_info;
 struct nilfs_inode_info *ii = NILFS_I(inode);
 int err;

 spin_lock(&nilfs->ns_inode_lock);
 if (ii->i_bh == ((void*)0)) {
  spin_unlock(&nilfs->ns_inode_lock);
  err = nilfs_ifile_get_inode_block(ii->i_root->ifile,
        inode->i_ino, pbh);
  if (unlikely(err))
   return err;
  spin_lock(&nilfs->ns_inode_lock);
  if (ii->i_bh == ((void*)0))
   ii->i_bh = *pbh;
  else {
   brelse(*pbh);
   *pbh = ii->i_bh;
  }
 } else
  *pbh = ii->i_bh;

 get_bh(*pbh);
 spin_unlock(&nilfs->ns_inode_lock);
 return 0;
}
