
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 int PAGECACHE_TAG_DIRTY ;
 int PAGECACHE_TAG_TOWRITE ;
 int RADIX_TREE_MAP_SIZE ;
 int free (int ) ;
 int mt_tree ;
 struct page* page_alloc () ;
 int printv (int,char*) ;
 int radix_tree_delete (int *,int) ;
 int radix_tree_empty (int *) ;
 int radix_tree_gang_lookup_tag_slot (int *,void***,unsigned long,unsigned long,int ) ;
 int radix_tree_insert (int *,int,struct page*) ;
 int radix_tree_tag_clear (int *,int,int ) ;
 int radix_tree_tag_set (int *,int,int ) ;
 int tag_tagged_items (int *,unsigned long,unsigned long,int,int ,int ) ;

void regression2_test(void)
{
 int i;
 struct page *p;
 int max_slots = RADIX_TREE_MAP_SIZE;
 unsigned long int start, end;
 struct page *pages[1];

 printv(1, "running regression test 2 (should take milliseconds)\n");

 for (i = 0; i <= max_slots - 1; i++) {
  p = page_alloc();
  radix_tree_insert(&mt_tree, i, p);
 }
 radix_tree_tag_set(&mt_tree, max_slots - 1, PAGECACHE_TAG_DIRTY);


 start = 0;
 end = max_slots - 2;
 tag_tagged_items(&mt_tree, start, end, 1,
    PAGECACHE_TAG_DIRTY, PAGECACHE_TAG_TOWRITE);


 p = page_alloc();
 radix_tree_insert(&mt_tree, max_slots, p);


 radix_tree_tag_clear(&mt_tree, max_slots - 1, PAGECACHE_TAG_DIRTY);


 for (i = max_slots - 1; i >= 0; i--)
  free(radix_tree_delete(&mt_tree, i));




 start = 1;
 end = max_slots - 2;
 radix_tree_gang_lookup_tag_slot(&mt_tree, (void ***)pages, start, end,
  PAGECACHE_TAG_TOWRITE);


 free(radix_tree_delete(&mt_tree, max_slots));

 BUG_ON(!radix_tree_empty(&mt_tree));

 printv(1, "regression test 2, done\n");
}
