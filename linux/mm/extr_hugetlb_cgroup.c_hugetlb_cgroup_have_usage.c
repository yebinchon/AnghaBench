
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugetlb_cgroup {int * hugepage; } ;


 int hugetlb_max_hstate ;
 scalar_t__ page_counter_read (int *) ;

__attribute__((used)) static inline bool hugetlb_cgroup_have_usage(struct hugetlb_cgroup *h_cg)
{
 int idx;

 for (idx = 0; idx < hugetlb_max_hstate; idx++) {
  if (page_counter_read(&h_cg->hugepage[idx]))
   return 1;
 }
 return 0;
}
