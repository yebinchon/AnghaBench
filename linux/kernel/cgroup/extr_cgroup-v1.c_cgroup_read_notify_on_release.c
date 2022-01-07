
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cgroup_subsys_state {int cgroup; } ;
struct cftype {int dummy; } ;


 int notify_on_release (int ) ;

__attribute__((used)) static u64 cgroup_read_notify_on_release(struct cgroup_subsys_state *css,
      struct cftype *cft)
{
 return notify_on_release(css->cgroup);
}
