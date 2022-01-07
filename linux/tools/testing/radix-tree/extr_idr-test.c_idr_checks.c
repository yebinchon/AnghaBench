
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {unsigned int index; } ;


 int DEFINE_IDR (int ) ;
 struct item* DUMMY_PTR ;
 unsigned long ENOSPC ;
 int GFP_KERNEL ;
 unsigned long INT_MAX ;
 unsigned long RADIX_TREE_MAP_SIZE ;
 int assert (int) ;
 int idr ;
 int idr_align_test (int *) ;
 unsigned long idr_alloc (int *,struct item*,int,int,int ) ;
 unsigned int idr_alloc_cyclic (int *,struct item*,int ,int ,int ) ;
 int idr_alloc_test () ;
 int idr_destroy (int *) ;
 int idr_find_test () ;
 int idr_for_each (int *,int ,int *) ;
 int idr_get_next_test (int) ;
 int idr_is_empty (int *) ;
 int idr_nowait_test () ;
 int idr_null_test () ;
 int idr_remove (int *,int) ;
 int idr_replace_test () ;
 int idr_set_cursor (int *,unsigned long) ;
 int idr_u32_test (int) ;
 struct item* item_create (unsigned long,int ) ;
 int item_idr_free ;
 int item_idr_remove (int *,unsigned long) ;

void idr_checks(void)
{
 unsigned long i;
 DEFINE_IDR(idr);

 for (i = 0; i < 10000; i++) {
  struct item *item = item_create(i, 0);
  assert(idr_alloc(&idr, item, 0, 20000, GFP_KERNEL) == i);
 }

 assert(idr_alloc(&idr, DUMMY_PTR, 5, 30, GFP_KERNEL) < 0);

 for (i = 0; i < 5000; i++)
  item_idr_remove(&idr, i);

 idr_remove(&idr, 3);

 idr_for_each(&idr, item_idr_free, &idr);
 idr_destroy(&idr);

 assert(idr_is_empty(&idr));

 idr_remove(&idr, 3);
 idr_remove(&idr, 0);

 assert(idr_alloc(&idr, DUMMY_PTR, 0, 0, GFP_KERNEL) == 0);
 idr_remove(&idr, 1);
 for (i = 1; i < RADIX_TREE_MAP_SIZE; i++)
  assert(idr_alloc(&idr, DUMMY_PTR, 0, 0, GFP_KERNEL) == i);
 idr_remove(&idr, 1 << 30);
 idr_destroy(&idr);

 for (i = INT_MAX - 3UL; i < INT_MAX + 1UL; i++) {
  struct item *item = item_create(i, 0);
  assert(idr_alloc(&idr, item, i, i + 10, GFP_KERNEL) == i);
 }
 assert(idr_alloc(&idr, DUMMY_PTR, i - 2, i, GFP_KERNEL) == -ENOSPC);
 assert(idr_alloc(&idr, DUMMY_PTR, i - 2, i + 10, GFP_KERNEL) == -ENOSPC);

 idr_for_each(&idr, item_idr_free, &idr);
 idr_destroy(&idr);
 idr_destroy(&idr);

 assert(idr_is_empty(&idr));

 idr_set_cursor(&idr, INT_MAX - 3UL);
 for (i = INT_MAX - 3UL; i < INT_MAX + 3UL; i++) {
  struct item *item;
  unsigned int id;
  if (i <= INT_MAX)
   item = item_create(i, 0);
  else
   item = item_create(i - INT_MAX - 1, 0);

  id = idr_alloc_cyclic(&idr, item, 0, 0, GFP_KERNEL);
  assert(id == item->index);
 }

 idr_for_each(&idr, item_idr_free, &idr);
 idr_destroy(&idr);
 assert(idr_is_empty(&idr));

 for (i = 1; i < 10000; i++) {
  struct item *item = item_create(i, 0);
  assert(idr_alloc(&idr, item, 1, 20000, GFP_KERNEL) == i);
 }

 idr_for_each(&idr, item_idr_free, &idr);
 idr_destroy(&idr);

 idr_replace_test();
 idr_alloc_test();
 idr_null_test();
 idr_nowait_test();
 idr_get_next_test(0);
 idr_get_next_test(1);
 idr_get_next_test(4);
 idr_u32_test(4);
 idr_u32_test(1);
 idr_u32_test(0);
 idr_align_test(&idr);
 idr_find_test();
}
