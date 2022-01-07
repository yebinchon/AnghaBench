
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct f2fs_sb_info {int extent_lock; int extent_list; } ;
struct f2fs_extent {scalar_t__ len; } ;
struct extent_tree {int lock; int node_cnt; } ;
struct extent_node {int list; } ;
struct extent_info {int dummy; } ;


 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 struct extent_tree* __grab_extent_tree (struct inode*) ;
 struct extent_node* __init_extent_tree (struct f2fs_sb_info*,struct extent_tree*,struct extent_info*) ;
 scalar_t__ atomic_read (int *) ;
 int f2fs_may_extent_tree (struct inode*) ;
 int get_extent_info (struct extent_info*,struct f2fs_extent*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static bool __f2fs_init_extent_tree(struct inode *inode, struct f2fs_extent *i_ext)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct extent_tree *et;
 struct extent_node *en;
 struct extent_info ei;

 if (!f2fs_may_extent_tree(inode)) {

  if (i_ext && i_ext->len) {
   i_ext->len = 0;
   return 1;
  }
  return 0;
 }

 et = __grab_extent_tree(inode);

 if (!i_ext || !i_ext->len)
  return 0;

 get_extent_info(&ei, i_ext);

 write_lock(&et->lock);
 if (atomic_read(&et->node_cnt))
  goto out;

 en = __init_extent_tree(sbi, et, &ei);
 if (en) {
  spin_lock(&sbi->extent_lock);
  list_add_tail(&en->list, &sbi->extent_list);
  spin_unlock(&sbi->extent_lock);
 }
out:
 write_unlock(&et->lock);
 return 0;
}
