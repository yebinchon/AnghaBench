
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugetlb_cgroup {int dummy; } ;


 struct hugetlb_cgroup* root_h_cgroup ;

__attribute__((used)) static inline bool hugetlb_cgroup_is_root(struct hugetlb_cgroup *h_cg)
{
 return (h_cg == root_h_cgroup);
}
