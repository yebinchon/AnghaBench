
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgroup_subsys_state {int dummy; } ;
struct cpuset {int relax_domain_level; struct cgroup_subsys_state css; int fmeter; int effective_mems; int mems_allowed; int flags; } ;
struct TYPE_2__ {struct cgroup_subsys_state css; } ;


 int CS_SCHED_LOAD_BALANCE ;
 int ENOMEM ;
 struct cgroup_subsys_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ alloc_cpumasks (struct cpuset*,int *) ;
 int fmeter_init (int *) ;
 int kfree (struct cpuset*) ;
 struct cpuset* kzalloc (int,int ) ;
 int nodes_clear (int ) ;
 int set_bit (int ,int *) ;
 TYPE_1__ top_cpuset ;

__attribute__((used)) static struct cgroup_subsys_state *
cpuset_css_alloc(struct cgroup_subsys_state *parent_css)
{
 struct cpuset *cs;

 if (!parent_css)
  return &top_cpuset.css;

 cs = kzalloc(sizeof(*cs), GFP_KERNEL);
 if (!cs)
  return ERR_PTR(-ENOMEM);

 if (alloc_cpumasks(cs, ((void*)0))) {
  kfree(cs);
  return ERR_PTR(-ENOMEM);
 }

 set_bit(CS_SCHED_LOAD_BALANCE, &cs->flags);
 nodes_clear(cs->mems_allowed);
 nodes_clear(cs->effective_mems);
 fmeter_init(&cs->fmeter);
 cs->relax_domain_level = -1;

 return &cs->css;
}
