
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {size_t pid; int tgid; } ;


 size_t PID_MAX_DEFAULT ;
 int * tgid_map ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int trace_save_tgid(struct task_struct *tsk)
{

 if (!tsk->pid)
  return 1;

 if (unlikely(!tgid_map || tsk->pid > PID_MAX_DEFAULT))
  return 0;

 tgid_map[tsk->pid] = tsk->tgid;
 return 1;
}
