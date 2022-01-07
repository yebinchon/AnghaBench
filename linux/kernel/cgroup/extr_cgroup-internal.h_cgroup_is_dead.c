
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct cgroup {TYPE_1__ self; } ;


 int CSS_ONLINE ;

__attribute__((used)) static inline bool cgroup_is_dead(const struct cgroup *cgrp)
{
 return !(cgrp->self.flags & CSS_ONLINE);
}
