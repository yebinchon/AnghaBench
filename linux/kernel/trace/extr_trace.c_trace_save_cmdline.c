
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {size_t pid; int comm; } ;
struct TYPE_2__ {unsigned int* map_pid_to_cmdline; int cmdline_idx; int cmdline_num; unsigned int* map_cmdline_to_pid; } ;


 unsigned int NO_CMDLINE_MAP ;
 size_t PID_MAX_DEFAULT ;
 int arch_spin_trylock (int *) ;
 int arch_spin_unlock (int *) ;
 TYPE_1__* savedcmd ;
 int set_cmdline (unsigned int,int ) ;
 int trace_cmdline_lock ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int trace_save_cmdline(struct task_struct *tsk)
{
 unsigned pid, idx;


 if (!tsk->pid)
  return 1;

 if (unlikely(tsk->pid > PID_MAX_DEFAULT))
  return 0;







 if (!arch_spin_trylock(&trace_cmdline_lock))
  return 0;

 idx = savedcmd->map_pid_to_cmdline[tsk->pid];
 if (idx == NO_CMDLINE_MAP) {
  idx = (savedcmd->cmdline_idx + 1) % savedcmd->cmdline_num;







  pid = savedcmd->map_cmdline_to_pid[idx];
  if (pid != NO_CMDLINE_MAP)
   savedcmd->map_pid_to_cmdline[pid] = NO_CMDLINE_MAP;

  savedcmd->map_cmdline_to_pid[idx] = tsk->pid;
  savedcmd->map_pid_to_cmdline[tsk->pid] = idx;

  savedcmd->cmdline_idx = idx;
 }

 set_cmdline(idx, tsk->comm);

 arch_spin_unlock(&trace_cmdline_lock);

 return 1;
}
