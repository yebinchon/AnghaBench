
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;


 int css_freezer (struct cgroup_subsys_state*) ;
 int kfree (int ) ;

__attribute__((used)) static void freezer_css_free(struct cgroup_subsys_state *css)
{
 kfree(css_freezer(css));
}
