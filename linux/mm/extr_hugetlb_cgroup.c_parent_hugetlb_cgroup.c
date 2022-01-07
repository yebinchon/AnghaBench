
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct hugetlb_cgroup {TYPE_1__ css; } ;


 struct hugetlb_cgroup* hugetlb_cgroup_from_css (int ) ;

__attribute__((used)) static inline struct hugetlb_cgroup *
parent_hugetlb_cgroup(struct hugetlb_cgroup *h_cg)
{
 return hugetlb_cgroup_from_css(h_cg->css.parent);
}
