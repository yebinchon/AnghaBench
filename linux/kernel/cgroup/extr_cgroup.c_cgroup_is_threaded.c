
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {struct cgroup* dom_cgrp; } ;



bool cgroup_is_threaded(struct cgroup *cgrp)
{
 return cgrp->dom_cgrp != cgrp;
}
