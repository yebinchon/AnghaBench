
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hugetlb_cgroup {int dummy; } ;


 scalar_t__ hugetlb_cgroup_disabled () ;
 int set_hugetlb_cgroup (struct page*,struct hugetlb_cgroup*) ;

void hugetlb_cgroup_commit_charge(int idx, unsigned long nr_pages,
      struct hugetlb_cgroup *h_cg,
      struct page *page)
{
 if (hugetlb_cgroup_disabled() || !h_cg)
  return;

 set_hugetlb_cgroup(page, h_cg);
 return;
}
