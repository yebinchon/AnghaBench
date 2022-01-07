
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int self; } ;


 int WARN_ON_ONCE (int ) ;
 int cgroup_is_dead (struct cgroup*) ;
 int css_get (int *) ;

__attribute__((used)) static void cgroup_get_live(struct cgroup *cgrp)
{
 WARN_ON_ONCE(cgroup_is_dead(cgrp));
 css_get(&cgrp->self);
}
