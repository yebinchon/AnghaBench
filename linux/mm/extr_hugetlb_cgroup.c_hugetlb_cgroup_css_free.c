
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugetlb_cgroup {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;


 struct hugetlb_cgroup* hugetlb_cgroup_from_css (struct cgroup_subsys_state*) ;
 int kfree (struct hugetlb_cgroup*) ;

__attribute__((used)) static void hugetlb_cgroup_css_free(struct cgroup_subsys_state *css)
{
 struct hugetlb_cgroup *h_cgroup;

 h_cgroup = hugetlb_cgroup_from_css(css);
 kfree(h_cgroup);
}
