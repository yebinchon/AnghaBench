
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int array ;
 int check_account (int *) ;
 int check_align (int *) ;
 int check_cmpxchg (int *) ;
 int check_create_range (int *) ;
 int check_destroy (int *) ;
 int check_find (int *) ;
 int check_find_entry (int *) ;
 int check_insert (int *) ;
 int check_move (int *) ;
 int check_multi_store (int *) ;
 int check_reserve (int *) ;
 int check_store_iter (int *) ;
 int check_store_range (int *) ;
 int check_workingset (int *,int) ;
 int check_xa_alloc () ;
 int check_xa_err (int *) ;
 int check_xa_load (int *) ;
 int check_xa_mark (int *) ;
 int check_xa_shrink (int *) ;
 int check_xas_erase (int *) ;
 int check_xas_retry (int *) ;
 int printk (char*,scalar_t__,scalar_t__) ;
 scalar_t__ tests_passed ;
 scalar_t__ tests_run ;
 int xa0 ;

__attribute__((used)) static int xarray_checks(void)
{
 check_xa_err(&array);
 check_xas_retry(&array);
 check_xa_load(&array);
 check_xa_mark(&array);
 check_xa_shrink(&array);
 check_xas_erase(&array);
 check_insert(&array);
 check_cmpxchg(&array);
 check_reserve(&array);
 check_reserve(&xa0);
 check_multi_store(&array);
 check_xa_alloc();
 check_find(&array);
 check_find_entry(&array);
 check_account(&array);
 check_destroy(&array);
 check_move(&array);
 check_create_range(&array);
 check_store_range(&array);
 check_store_iter(&array);
 check_align(&xa0);

 check_workingset(&array, 0);
 check_workingset(&array, 64);
 check_workingset(&array, 4096);

 printk("XArray: %u of %u tests passed\n", tests_passed, tests_run);
 return (tests_run == tests_passed) ? 0 : -EINVAL;
}
