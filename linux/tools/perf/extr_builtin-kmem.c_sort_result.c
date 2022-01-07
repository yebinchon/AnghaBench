
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sort_page_result (int *,int *,int *) ;
 int __sort_slab_result (int *,int *,int *) ;
 scalar_t__ kmem_page ;
 scalar_t__ kmem_slab ;
 scalar_t__ live_page ;
 int page_alloc_sort ;
 int page_alloc_sorted ;
 int page_alloc_tree ;
 int page_caller_sort ;
 int page_caller_sorted ;
 int page_caller_tree ;
 int page_live_tree ;
 int root_alloc_sorted ;
 int root_alloc_stat ;
 int root_caller_sorted ;
 int root_caller_stat ;
 int slab_alloc_sort ;
 int slab_caller_sort ;

__attribute__((used)) static void sort_result(void)
{
 if (kmem_slab) {
  __sort_slab_result(&root_alloc_stat, &root_alloc_sorted,
       &slab_alloc_sort);
  __sort_slab_result(&root_caller_stat, &root_caller_sorted,
       &slab_caller_sort);
 }
 if (kmem_page) {
  if (live_page)
   __sort_page_result(&page_live_tree, &page_alloc_sorted,
        &page_alloc_sort);
  else
   __sort_page_result(&page_alloc_tree, &page_alloc_sorted,
        &page_alloc_sort);

  __sort_page_result(&page_caller_tree, &page_caller_sorted,
       &page_caller_sort);
 }
}
