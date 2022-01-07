
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int total_ext_node; } ;
struct extent_tree {struct extent_node* cached_en; int node_cnt; int root; } ;
struct extent_node {int rb_node; } ;


 int atomic_dec (int *) ;
 int extent_node_slab ;
 int kmem_cache_free (int ,struct extent_node*) ;
 int rb_erase_cached (int *,int *) ;

__attribute__((used)) static void __detach_extent_node(struct f2fs_sb_info *sbi,
    struct extent_tree *et, struct extent_node *en)
{
 rb_erase_cached(&en->rb_node, &et->root);
 atomic_dec(&et->node_cnt);
 atomic_dec(&sbi->total_ext_node);

 if (et->cached_en == en)
  et->cached_en = ((void*)0);
 kmem_cache_free(extent_node_slab, en);
}
