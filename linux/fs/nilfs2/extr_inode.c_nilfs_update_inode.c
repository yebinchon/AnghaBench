
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nilfs_inode_info {int i_state; TYPE_1__* i_root; } ;
struct nilfs_inode {int dummy; } ;
struct inode {int i_ino; } ;
struct buffer_head {int dummy; } ;
typedef int ino_t ;
struct TYPE_4__ {int mi_entry_size; } ;
struct TYPE_3__ {struct inode* ifile; } ;


 int I_DIRTY_DATASYNC ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_I_INODE_SYNC ;
 int NILFS_I_NEW ;
 TYPE_2__* NILFS_MDT (struct inode*) ;
 int memset (struct nilfs_inode*,int ,int ) ;
 struct nilfs_inode* nilfs_ifile_map_inode (struct inode*,int ,struct buffer_head*) ;
 int nilfs_ifile_unmap_inode (struct inode*,int ,struct buffer_head*) ;
 int nilfs_write_inode_common (struct inode*,struct nilfs_inode*,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void nilfs_update_inode(struct inode *inode, struct buffer_head *ibh, int flags)
{
 ino_t ino = inode->i_ino;
 struct nilfs_inode_info *ii = NILFS_I(inode);
 struct inode *ifile = ii->i_root->ifile;
 struct nilfs_inode *raw_inode;

 raw_inode = nilfs_ifile_map_inode(ifile, ino, ibh);

 if (test_and_clear_bit(NILFS_I_NEW, &ii->i_state))
  memset(raw_inode, 0, NILFS_MDT(ifile)->mi_entry_size);
 if (flags & I_DIRTY_DATASYNC)
  set_bit(NILFS_I_INODE_SYNC, &ii->i_state);

 nilfs_write_inode_common(inode, raw_inode, 0);






 nilfs_ifile_unmap_inode(ifile, ino, ibh);
}
