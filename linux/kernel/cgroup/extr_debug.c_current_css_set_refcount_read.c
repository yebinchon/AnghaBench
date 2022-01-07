
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {int refcount; } ;


 int current ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int refcount_read (int *) ;
 TYPE_1__* task_css_set (int ) ;

__attribute__((used)) static u64 current_css_set_refcount_read(struct cgroup_subsys_state *css,
      struct cftype *cft)
{
 u64 count;

 rcu_read_lock();
 count = refcount_read(&task_css_set(current)->refcount);
 rcu_read_unlock();
 return count;
}
