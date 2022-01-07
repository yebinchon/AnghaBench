
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int flags; } ;
struct TYPE_5__ {TYPE_1__* nsproxy; } ;
struct TYPE_4__ {int * cgroup_ns; } ;


 unsigned int CGRP_ROOT_MEMORY_LOCAL_EVENTS ;
 unsigned int CGRP_ROOT_NS_DELEGATE ;
 TYPE_3__ cgrp_dfl_root ;
 TYPE_2__* current ;
 int init_cgroup_ns ;

__attribute__((used)) static void apply_cgroup_root_flags(unsigned int root_flags)
{
 if (current->nsproxy->cgroup_ns == &init_cgroup_ns) {
  if (root_flags & CGRP_ROOT_NS_DELEGATE)
   cgrp_dfl_root.flags |= CGRP_ROOT_NS_DELEGATE;
  else
   cgrp_dfl_root.flags &= ~CGRP_ROOT_NS_DELEGATE;

  if (root_flags & CGRP_ROOT_MEMORY_LOCAL_EVENTS)
   cgrp_dfl_root.flags |= CGRP_ROOT_MEMORY_LOCAL_EVENTS;
  else
   cgrp_dfl_root.flags &= ~CGRP_ROOT_MEMORY_LOCAL_EVENTS;
 }
}
