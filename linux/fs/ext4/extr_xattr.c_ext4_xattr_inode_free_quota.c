
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EXT4_STATE_LUSTRE_EA_INODE ;
 int dquot_free_inode (struct inode*) ;
 int dquot_free_space_nodirty (struct inode*,int ) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 int round_up_cluster (struct inode*,size_t) ;

__attribute__((used)) static void ext4_xattr_inode_free_quota(struct inode *parent,
     struct inode *ea_inode,
     size_t len)
{
 if (ea_inode &&
     ext4_test_inode_state(ea_inode, EXT4_STATE_LUSTRE_EA_INODE))
  return;
 dquot_free_space_nodirty(parent, round_up_cluster(parent, len));
 dquot_free_inode(parent);
}
