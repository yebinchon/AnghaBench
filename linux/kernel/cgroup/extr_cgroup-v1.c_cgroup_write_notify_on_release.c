
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct cgroup_subsys_state {TYPE_1__* cgroup; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int CGRP_NOTIFY_ON_RELEASE ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int cgroup_write_notify_on_release(struct cgroup_subsys_state *css,
       struct cftype *cft, u64 val)
{
 if (val)
  set_bit(CGRP_NOTIFY_ON_RELEASE, &css->cgroup->flags);
 else
  clear_bit(CGRP_NOTIFY_ON_RELEASE, &css->cgroup->flags);
 return 0;
}
