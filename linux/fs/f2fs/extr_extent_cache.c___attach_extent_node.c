
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct f2fs_sb_info {int total_ext_node; } ;
struct extent_tree {int node_cnt; int root; } ;
struct extent_info {int dummy; } ;
struct extent_node {int rb_node; struct extent_tree* et; int list; struct extent_info ei; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 int extent_node_slab ;
 struct extent_node* kmem_cache_alloc (int ,int ) ;
 int rb_insert_color_cached (int *,int *,int) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;

__attribute__((used)) static struct extent_node *__attach_extent_node(struct f2fs_sb_info *sbi,
    struct extent_tree *et, struct extent_info *ei,
    struct rb_node *parent, struct rb_node **p,
    bool leftmost)
{
 struct extent_node *en;

 en = kmem_cache_alloc(extent_node_slab, GFP_ATOMIC);
 if (!en)
  return ((void*)0);

 en->ei = *ei;
 INIT_LIST_HEAD(&en->list);
 en->et = et;

 rb_link_node(&en->rb_node, parent, p);
 rb_insert_color_cached(&en->rb_node, &et->root, leftmost);
 atomic_inc(&et->node_cnt);
 atomic_inc(&sbi->total_ext_node);
 return en;
}
