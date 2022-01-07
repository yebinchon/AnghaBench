
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pids_cgroup {int counter; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int dummy; } ;
typedef int s64 ;


 int atomic64_read (int *) ;
 struct pids_cgroup* css_pids (struct cgroup_subsys_state*) ;

__attribute__((used)) static s64 pids_current_read(struct cgroup_subsys_state *css,
        struct cftype *cft)
{
 struct pids_cgroup *pids = css_pids(css);

 return atomic64_read(&pids->counter);
}
