
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys {int dummy; } ;
struct cftype {char* name; int flags; } ;


 int __CFTYPE_ONLY_ON_DFL ;
 int cgroup_add_cftypes (struct cgroup_subsys*,struct cftype*) ;

int cgroup_add_dfl_cftypes(struct cgroup_subsys *ss, struct cftype *cfts)
{
 struct cftype *cft;

 for (cft = cfts; cft && cft->name[0] != '\0'; cft++)
  cft->flags |= __CFTYPE_ONLY_ON_DFL;
 return cgroup_add_cftypes(ss, cfts);
}
