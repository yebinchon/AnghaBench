
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int dummy; } ;


 int CPUACCT_STAT_NSTATS ;
 int __cpuusage_read (struct cgroup_subsys_state*,int ) ;

__attribute__((used)) static u64 cpuusage_read(struct cgroup_subsys_state *css, struct cftype *cft)
{
 return __cpuusage_read(css, CPUACCT_STAT_NSTATS);
}
