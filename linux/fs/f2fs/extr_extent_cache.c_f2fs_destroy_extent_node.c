
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct extent_tree {int lock; int node_cnt; } ;
struct TYPE_2__ {struct extent_tree* extent_tree; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 unsigned int __free_extent_tree (struct f2fs_sb_info*,struct extent_tree*) ;
 int atomic_read (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

unsigned int f2fs_destroy_extent_node(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct extent_tree *et = F2FS_I(inode)->extent_tree;
 unsigned int node_cnt = 0;

 if (!et || !atomic_read(&et->node_cnt))
  return 0;

 write_lock(&et->lock);
 node_cnt = __free_extent_tree(sbi, et);
 write_unlock(&et->lock);

 return node_cnt;
}
