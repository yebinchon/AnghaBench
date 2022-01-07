
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int * root; } ;


 int cgrp_dfl_root ;

bool cgroup_on_dfl(const struct cgroup *cgrp)
{
 return cgrp->root == &cgrp_dfl_root;
}
