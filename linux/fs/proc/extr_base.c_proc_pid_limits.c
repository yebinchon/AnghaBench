
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; } ;
struct seq_file {int dummy; } ;
struct rlimit {char* rlim_cur; char* rlim_max; } ;
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;
struct TYPE_4__ {char* unit; int name; } ;
struct TYPE_3__ {int rlim; } ;


 char* RLIM_INFINITY ;
 int RLIM_NLIMITS ;
 TYPE_2__* lnames ;
 int lock_task_sighand (struct task_struct*,unsigned long*) ;
 int memcpy (struct rlimit*,int ,int) ;
 int seq_printf (struct seq_file*,char*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

__attribute__((used)) static int proc_pid_limits(struct seq_file *m, struct pid_namespace *ns,
      struct pid *pid, struct task_struct *task)
{
 unsigned int i;
 unsigned long flags;

 struct rlimit rlim[RLIM_NLIMITS];

 if (!lock_task_sighand(task, &flags))
  return 0;
 memcpy(rlim, task->signal->rlim, sizeof(struct rlimit) * RLIM_NLIMITS);
 unlock_task_sighand(task, &flags);




 seq_puts(m, "Limit                     "
  "Soft Limit           "
  "Hard Limit           "
  "Units     \n");

 for (i = 0; i < RLIM_NLIMITS; i++) {
  if (rlim[i].rlim_cur == RLIM_INFINITY)
   seq_printf(m, "%-25s %-20s ",
       lnames[i].name, "unlimited");
  else
   seq_printf(m, "%-25s %-20lu ",
       lnames[i].name, rlim[i].rlim_cur);

  if (rlim[i].rlim_max == RLIM_INFINITY)
   seq_printf(m, "%-20s ", "unlimited");
  else
   seq_printf(m, "%-20lu ", rlim[i].rlim_max);

  if (lnames[i].unit)
   seq_printf(m, "%-10s\n", lnames[i].unit);
  else
   seq_putc(m, '\n');
 }

 return 0;
}
