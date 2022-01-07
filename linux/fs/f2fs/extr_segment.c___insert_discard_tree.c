
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_node {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct discard_cmd_control {int root; } ;
struct discard_cmd {int dummy; } ;
struct block_device {int dummy; } ;
typedef int block_t ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;


 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 struct discard_cmd* __attach_discard_cmd (struct f2fs_sb_info*,struct block_device*,int ,int ,int ,struct rb_node*,struct rb_node**,int) ;
 struct rb_node** f2fs_lookup_rb_tree_for_insert (struct f2fs_sb_info*,int *,struct rb_node**,int ,int*) ;

__attribute__((used)) static struct discard_cmd *__insert_discard_tree(struct f2fs_sb_info *sbi,
    struct block_device *bdev, block_t lstart,
    block_t start, block_t len,
    struct rb_node **insert_p,
    struct rb_node *insert_parent)
{
 struct discard_cmd_control *dcc = SM_I(sbi)->dcc_info;
 struct rb_node **p;
 struct rb_node *parent = ((void*)0);
 struct discard_cmd *dc = ((void*)0);
 bool leftmost = 1;

 if (insert_p && insert_parent) {
  parent = insert_parent;
  p = insert_p;
  goto do_insert;
 }

 p = f2fs_lookup_rb_tree_for_insert(sbi, &dcc->root, &parent,
       lstart, &leftmost);
do_insert:
 dc = __attach_discard_cmd(sbi, bdev, lstart, start, len, parent,
        p, leftmost);
 if (!dc)
  return ((void*)0);

 return dc;
}
