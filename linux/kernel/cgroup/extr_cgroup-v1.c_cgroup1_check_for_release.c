
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int release_agent_work; int self; } ;


 int cgroup_is_dead (struct cgroup*) ;
 int cgroup_is_populated (struct cgroup*) ;
 int css_has_online_children (int *) ;
 scalar_t__ notify_on_release (struct cgroup*) ;
 int schedule_work (int *) ;

void cgroup1_check_for_release(struct cgroup *cgrp)
{
 if (notify_on_release(cgrp) && !cgroup_is_populated(cgrp) &&
     !css_has_online_children(&cgrp->self) && !cgroup_is_dead(cgrp))
  schedule_work(&cgrp->release_agent_work);
}
