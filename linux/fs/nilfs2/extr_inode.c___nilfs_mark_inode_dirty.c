
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_ino; int i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {TYPE_1__* i_root; } ;
struct TYPE_3__ {int ifile; } ;


 int KERN_WARNING ;
 TYPE_2__* NILFS_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_load_inode_block (struct inode*,struct buffer_head**) ;
 int nilfs_mdt_mark_dirty (int ) ;
 int nilfs_msg (int ,int ,char*,int ,int) ;
 int nilfs_update_inode (struct inode*,struct buffer_head*,int) ;
 scalar_t__ unlikely (int) ;

int __nilfs_mark_inode_dirty(struct inode *inode, int flags)
{
 struct buffer_head *ibh;
 int err;

 err = nilfs_load_inode_block(inode, &ibh);
 if (unlikely(err)) {
  nilfs_msg(inode->i_sb, KERN_WARNING,
     "cannot mark inode dirty (ino=%lu): error %d loading inode block",
     inode->i_ino, err);
  return err;
 }
 nilfs_update_inode(inode, ibh, flags);
 mark_buffer_dirty(ibh);
 nilfs_mdt_mark_dirty(NILFS_I(inode)->i_root->ifile);
 brelse(ibh);
 return 0;
}
