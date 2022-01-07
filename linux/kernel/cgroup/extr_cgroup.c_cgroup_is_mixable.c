
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int dummy; } ;


 int cgroup_parent (struct cgroup*) ;

__attribute__((used)) static bool cgroup_is_mixable(struct cgroup *cgrp)
{





 return !cgroup_parent(cgrp);
}
