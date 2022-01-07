
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cgroup_subsys_state {TYPE_1__* cgroup; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {int self; } ;


 int cgroup_is_populated (TYPE_1__*) ;
 int css_has_online_children (int *) ;

__attribute__((used)) static u64 releasable_read(struct cgroup_subsys_state *css, struct cftype *cft)
{
 return (!cgroup_is_populated(css->cgroup) &&
  !css_has_online_children(&css->cgroup->self));
}
