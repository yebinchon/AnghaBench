
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * pid_links; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int INIT_HLIST_NODE (int *) ;
 int PIDTYPE_MAX ;
 int PIDTYPE_PID ;
 int init_struct_pid ;
 int init_task_pid (struct task_struct*,int,int *) ;

__attribute__((used)) static inline void init_idle_pids(struct task_struct *idle)
{
 enum pid_type type;

 for (type = PIDTYPE_PID; type < PIDTYPE_MAX; ++type) {
  INIT_HLIST_NODE(&idle->pid_links[type]);
  init_task_pid(idle, type, &init_struct_pid);
 }
}
