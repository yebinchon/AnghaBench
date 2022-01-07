
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int dummy; } ;


 int BATCH ;
 int GFP_KERNEL ;
 int RADIX_TREE (int ,int ) ;
 int XA_MARK_0 ;
 int XA_MARK_1 ;
 int assert (int) ;
 int item_insert (int *,int ) ;
 int item_kill_tree (int *) ;
 int item_tag_clear (int *,int ,int ) ;
 int item_tag_set (int *,int ,int ) ;
 int radix_tree_gang_lookup_tag (int *,void**,int,int,int) ;
 int tag_tagged_items (int *,unsigned long,int,int,int ,int ) ;
 int tree ;
 int verify_tag_consistency (int *,int) ;

__attribute__((used)) static void single_check(void)
{
 struct item *items[BATCH];
 RADIX_TREE(tree, GFP_KERNEL);
 int ret;
 unsigned long first = 0;

 item_insert(&tree, 0);
 item_tag_set(&tree, 0, 0);
 ret = radix_tree_gang_lookup_tag(&tree, (void **)items, 0, BATCH, 0);
 assert(ret == 1);
 ret = radix_tree_gang_lookup_tag(&tree, (void **)items, 1, BATCH, 0);
 assert(ret == 0);
 verify_tag_consistency(&tree, 0);
 verify_tag_consistency(&tree, 1);
 ret = tag_tagged_items(&tree, first, 10, 10, XA_MARK_0, XA_MARK_1);
 assert(ret == 1);
 ret = radix_tree_gang_lookup_tag(&tree, (void **)items, 0, BATCH, 1);
 assert(ret == 1);
 item_tag_clear(&tree, 0, 0);
 ret = radix_tree_gang_lookup_tag(&tree, (void **)items, 0, BATCH, 0);
 assert(ret == 0);
 item_kill_tree(&tree);
}
