
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct pids_cgroup {struct cgroup_subsys_state css; int events_limit; int counter; int limit; } ;


 int ENOMEM ;
 struct cgroup_subsys_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int PIDS_MAX ;
 int atomic64_set (int *,int ) ;
 struct pids_cgroup* kzalloc (int,int ) ;

__attribute__((used)) static struct cgroup_subsys_state *
pids_css_alloc(struct cgroup_subsys_state *parent)
{
 struct pids_cgroup *pids;

 pids = kzalloc(sizeof(struct pids_cgroup), GFP_KERNEL);
 if (!pids)
  return ERR_PTR(-ENOMEM);

 pids->limit = PIDS_MAX;
 atomic64_set(&pids->counter, 0);
 atomic64_set(&pids->events_limit, 0);
 return &pids->css;
}
