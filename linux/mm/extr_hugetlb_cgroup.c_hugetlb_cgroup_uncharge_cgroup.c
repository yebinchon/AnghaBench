
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugetlb_cgroup {int * hugepage; } ;


 scalar_t__ HUGETLB_CGROUP_MIN_ORDER ;
 int * hstates ;
 scalar_t__ huge_page_order (int *) ;
 scalar_t__ hugetlb_cgroup_disabled () ;
 int page_counter_uncharge (int *,unsigned long) ;

void hugetlb_cgroup_uncharge_cgroup(int idx, unsigned long nr_pages,
        struct hugetlb_cgroup *h_cg)
{
 if (hugetlb_cgroup_disabled() || !h_cg)
  return;

 if (huge_page_order(&hstates[idx]) < HUGETLB_CGROUP_MIN_ORDER)
  return;

 page_counter_uncharge(&h_cg->hugepage[idx], nr_pages);
 return;
}
