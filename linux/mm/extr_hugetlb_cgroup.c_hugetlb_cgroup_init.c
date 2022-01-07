
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_counter {int dummy; } ;
struct hugetlb_cgroup {struct page_counter* hugepage; } ;


 int HUGE_MAX_HSTATE ;
 int PAGE_COUNTER_MAX ;
 int VM_BUG_ON (int) ;
 int * hstates ;
 int huge_page_order (int *) ;
 int page_counter_init (struct page_counter*,struct page_counter*) ;
 int page_counter_set_max (struct page_counter*,unsigned long) ;
 unsigned long round_down (int ,int) ;

__attribute__((used)) static void hugetlb_cgroup_init(struct hugetlb_cgroup *h_cgroup,
    struct hugetlb_cgroup *parent_h_cgroup)
{
 int idx;

 for (idx = 0; idx < HUGE_MAX_HSTATE; idx++) {
  struct page_counter *counter = &h_cgroup->hugepage[idx];
  struct page_counter *parent = ((void*)0);
  unsigned long limit;
  int ret;

  if (parent_h_cgroup)
   parent = &parent_h_cgroup->hugepage[idx];
  page_counter_init(counter, parent);

  limit = round_down(PAGE_COUNTER_MAX,
       1 << huge_page_order(&hstates[idx]));
  ret = page_counter_set_max(counter, limit);
  VM_BUG_ON(ret);
 }
}
