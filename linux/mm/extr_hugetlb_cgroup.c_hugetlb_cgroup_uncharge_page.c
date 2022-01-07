
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hugetlb_cgroup {int * hugepage; } ;


 scalar_t__ hugetlb_cgroup_disabled () ;
 struct hugetlb_cgroup* hugetlb_cgroup_from_page (struct page*) ;
 int hugetlb_lock ;
 int lockdep_assert_held (int *) ;
 int page_counter_uncharge (int *,unsigned long) ;
 int set_hugetlb_cgroup (struct page*,int *) ;
 scalar_t__ unlikely (int) ;

void hugetlb_cgroup_uncharge_page(int idx, unsigned long nr_pages,
      struct page *page)
{
 struct hugetlb_cgroup *h_cg;

 if (hugetlb_cgroup_disabled())
  return;
 lockdep_assert_held(&hugetlb_lock);
 h_cg = hugetlb_cgroup_from_page(page);
 if (unlikely(!h_cg))
  return;
 set_hugetlb_cgroup(page, ((void*)0));
 page_counter_uncharge(&h_cg->hugepage[idx], nr_pages);
 return;
}
