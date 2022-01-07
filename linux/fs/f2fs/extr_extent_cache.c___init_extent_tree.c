
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rb_node {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_3__ {struct rb_node* rb_node; } ;
struct TYPE_4__ {TYPE_1__ rb_root; } ;
struct extent_tree {struct extent_node* cached_en; int largest; TYPE_2__ root; } ;
struct extent_node {int ei; } ;
struct extent_info {int dummy; } ;


 struct extent_node* __attach_extent_node (struct f2fs_sb_info*,struct extent_tree*,struct extent_info*,int *,struct rb_node**,int) ;

__attribute__((used)) static struct extent_node *__init_extent_tree(struct f2fs_sb_info *sbi,
    struct extent_tree *et, struct extent_info *ei)
{
 struct rb_node **p = &et->root.rb_root.rb_node;
 struct extent_node *en;

 en = __attach_extent_node(sbi, et, ei, ((void*)0), p, 1);
 if (!en)
  return ((void*)0);

 et->largest = en->ei;
 et->cached_en = en;
 return en;
}
