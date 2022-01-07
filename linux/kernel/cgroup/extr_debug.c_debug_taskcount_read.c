
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cgroup_subsys_state {int cgroup; } ;
struct cftype {int dummy; } ;


 int cgroup_task_count (int ) ;

__attribute__((used)) static u64 debug_taskcount_read(struct cgroup_subsys_state *css,
    struct cftype *cft)
{
 return cgroup_task_count(css->cgroup);
}
