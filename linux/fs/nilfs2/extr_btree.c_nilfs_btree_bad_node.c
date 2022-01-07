
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {TYPE_1__* b_inode; } ;
struct TYPE_2__ {int i_ino; int i_sb; } ;


 int KERN_CRIT ;
 int dump_stack () ;
 int nilfs_btree_node_get_level (struct nilfs_btree_node*) ;
 int nilfs_msg (int ,int ,char*,int ,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_btree_bad_node(const struct nilfs_bmap *btree,
    struct nilfs_btree_node *node, int level)
{
 if (unlikely(nilfs_btree_node_get_level(node) != level)) {
  dump_stack();
  nilfs_msg(btree->b_inode->i_sb, KERN_CRIT,
     "btree level mismatch (ino=%lu): %d != %d",
     btree->b_inode->i_ino,
     nilfs_btree_node_get_level(node), level);
  return 1;
 }
 return 0;
}
