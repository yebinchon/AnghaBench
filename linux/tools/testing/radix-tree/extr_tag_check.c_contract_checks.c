
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int dummy; } ;


 int GFP_KERNEL ;
 int RADIX_TREE (int ,int ) ;
 int RADIX_TREE_MAP_SHIFT ;
 int assert (int) ;
 int item_delete (int *,int) ;
 int item_insert (int *,int) ;
 int item_kill_tree (int *) ;
 int item_tag_clear (int *,int,int) ;
 int item_tag_get (int *,int,int) ;
 int item_tag_set (int *,int,int) ;
 int radix_tree_gang_lookup_tag (int *,void**,int ,int,int) ;
 int tree ;
 int verify_tag_consistency (int *,int ) ;

__attribute__((used)) static void contract_checks(void)
{
 struct item *item;
 int tmp;
 RADIX_TREE(tree, GFP_KERNEL);

 tmp = 1<<RADIX_TREE_MAP_SHIFT;
 item_insert(&tree, tmp);
 item_insert(&tree, tmp+1);
 item_tag_set(&tree, tmp, 0);
 item_tag_set(&tree, tmp, 1);
 item_tag_set(&tree, tmp+1, 0);
 item_delete(&tree, tmp+1);
 item_tag_clear(&tree, tmp, 1);

 assert(radix_tree_gang_lookup_tag(&tree, (void **)&item, 0, 1, 0) == 1);
 assert(radix_tree_gang_lookup_tag(&tree, (void **)&item, 0, 1, 1) == 0);

 assert(item_tag_get(&tree, tmp, 0) == 1);
 assert(item_tag_get(&tree, tmp, 1) == 0);

 verify_tag_consistency(&tree, 0);
 item_kill_tree(&tree);
}
