
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int nr_populated_csets; } ;



__attribute__((used)) static bool cgroup_has_tasks(struct cgroup *cgrp)
{
 return cgrp->nr_populated_csets;
}
