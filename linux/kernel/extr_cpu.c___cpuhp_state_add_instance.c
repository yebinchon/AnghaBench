
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_node {int dummy; } ;
typedef enum cpuhp_state { ____Placeholder_cpuhp_state } cpuhp_state ;


 int __cpuhp_state_add_instance_cpuslocked (int,struct hlist_node*,int) ;
 int cpus_read_lock () ;
 int cpus_read_unlock () ;

int __cpuhp_state_add_instance(enum cpuhp_state state, struct hlist_node *node,
          bool invoke)
{
 int ret;

 cpus_read_lock();
 ret = __cpuhp_state_add_instance_cpuslocked(state, node, invoke);
 cpus_read_unlock();
 return ret;
}
