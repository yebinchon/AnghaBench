
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nr_frozen_tasks; } ;
struct cgroup {TYPE_1__ freezer; } ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static void cgroup_dec_frozen_cnt(struct cgroup *cgrp)
{
 cgrp->freezer.nr_frozen_tasks--;
 WARN_ON_ONCE(cgrp->freezer.nr_frozen_tasks < 0);
}
