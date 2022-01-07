
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct cgroup {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {struct cgroup* cgroup; } ;


 int CSS_TASK_ITER_PROCS ;
 int CSS_TASK_ITER_THREADED ;
 int EOPNOTSUPP ;
 void* ERR_PTR (int ) ;
 void* __cgroup_procs_start (struct seq_file*,int *,int) ;
 scalar_t__ cgroup_is_threaded (struct cgroup*) ;
 TYPE_1__* seq_css (struct seq_file*) ;

__attribute__((used)) static void *cgroup_procs_start(struct seq_file *s, loff_t *pos)
{
 struct cgroup *cgrp = seq_css(s)->cgroup;







 if (cgroup_is_threaded(cgrp))
  return ERR_PTR(-EOPNOTSUPP);

 return __cgroup_procs_start(s, pos, CSS_TASK_ITER_PROCS |
         CSS_TASK_ITER_THREADED);
}
