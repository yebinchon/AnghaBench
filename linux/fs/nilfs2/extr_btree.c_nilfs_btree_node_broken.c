
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int dummy; } ;
struct inode {int i_ino; int i_sb; } ;
typedef scalar_t__ sector_t ;


 int KERN_CRIT ;
 int NILFS_BTREE_LEVEL_MAX ;
 int NILFS_BTREE_LEVEL_NODE_MIN ;
 int NILFS_BTREE_NODE_NCHILDREN_MAX (size_t) ;
 int NILFS_BTREE_NODE_ROOT ;
 int nilfs_btree_node_get_flags (struct nilfs_btree_node const*) ;
 int nilfs_btree_node_get_level (struct nilfs_btree_node const*) ;
 int nilfs_btree_node_get_nchildren (struct nilfs_btree_node const*) ;
 int nilfs_msg (int ,int ,char*,int ,unsigned long long,int,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_btree_node_broken(const struct nilfs_btree_node *node,
       size_t size, struct inode *inode,
       sector_t blocknr)
{
 int level, flags, nchildren;
 int ret = 0;

 level = nilfs_btree_node_get_level(node);
 flags = nilfs_btree_node_get_flags(node);
 nchildren = nilfs_btree_node_get_nchildren(node);

 if (unlikely(level < NILFS_BTREE_LEVEL_NODE_MIN ||
       level >= NILFS_BTREE_LEVEL_MAX ||
       (flags & NILFS_BTREE_NODE_ROOT) ||
       nchildren < 0 ||
       nchildren > NILFS_BTREE_NODE_NCHILDREN_MAX(size))) {
  nilfs_msg(inode->i_sb, KERN_CRIT,
     "bad btree node (ino=%lu, blocknr=%llu): level = %d, flags = 0x%x, nchildren = %d",
     inode->i_ino, (unsigned long long)blocknr, level,
     flags, nchildren);
  ret = 1;
 }
 return ret;
}
