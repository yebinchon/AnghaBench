
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int comm; } ;


 int perf_event_comm (struct task_struct*,int) ;
 int strlcpy (int ,char const*,int) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int trace_task_rename (struct task_struct*,char const*) ;

void __set_task_comm(struct task_struct *tsk, const char *buf, bool exec)
{
 task_lock(tsk);
 trace_task_rename(tsk, buf);
 strlcpy(tsk->comm, buf, sizeof(tsk->comm));
 task_unlock(tsk);
 perf_event_comm(tsk, exec);
}
