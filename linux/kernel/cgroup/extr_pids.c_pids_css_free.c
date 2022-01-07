
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;


 int css_pids (struct cgroup_subsys_state*) ;
 int kfree (int ) ;

__attribute__((used)) static void pids_css_free(struct cgroup_subsys_state *css)
{
 kfree(css_pids(css));
}
