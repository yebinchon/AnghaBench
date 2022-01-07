
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_frozen_tasks; } ;
struct cgroup {TYPE_1__ freezer; } ;



__attribute__((used)) static void cgroup_inc_frozen_cnt(struct cgroup *cgrp)
{
 cgrp->freezer.nr_frozen_tasks++;
}
