
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pids_cgroup {scalar_t__ limit; } ;
struct cgroup_subsys_state {int dummy; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ PIDS_MAX ;
 scalar_t__ PIDS_MAX_STR ;
 struct pids_cgroup* css_pids (struct cgroup_subsys_state*) ;
 struct cgroup_subsys_state* seq_css (struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;

__attribute__((used)) static int pids_max_show(struct seq_file *sf, void *v)
{
 struct cgroup_subsys_state *css = seq_css(sf);
 struct pids_cgroup *pids = css_pids(css);
 int64_t limit = pids->limit;

 if (limit >= PIDS_MAX)
  seq_printf(sf, "%s\n", PIDS_MAX_STR);
 else
  seq_printf(sf, "%lld\n", limit);

 return 0;
}
