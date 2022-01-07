
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgroup_taskset {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;
struct TYPE_2__ {int attach_in_progress; } ;


 int cgroup_taskset_first (struct cgroup_taskset*,struct cgroup_subsys_state**) ;
 int cpuset_rwsem ;
 TYPE_1__* css_cs (struct cgroup_subsys_state*) ;
 int percpu_down_write (int *) ;
 int percpu_up_write (int *) ;

__attribute__((used)) static void cpuset_cancel_attach(struct cgroup_taskset *tset)
{
 struct cgroup_subsys_state *css;

 cgroup_taskset_first(tset, &css);

 percpu_down_write(&cpuset_rwsem);
 css_cs(css)->attach_in_progress--;
 percpu_up_write(&cpuset_rwsem);
}
