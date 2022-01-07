
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pref_node_fork; } ;


 int NUMA_NO_NODE ;
 struct task_struct* kthreadd_task ;

int tsk_fork_get_node(struct task_struct *tsk)
{




 return NUMA_NO_NODE;
}
