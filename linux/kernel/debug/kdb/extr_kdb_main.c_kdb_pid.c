
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
typedef int pid_t ;
struct TYPE_2__ {int pid; int comm; } ;


 int KDB_ARGCOUNT ;
 int KDB_BADINT ;
 struct task_struct* KDB_TSK (int ) ;
 struct task_struct* find_task_by_pid_ns (int ,int *) ;
 int init_pid_ns ;
 TYPE_1__* kdb_current_task ;
 int kdb_initial_cpu ;
 int kdb_printf (char*,int ,...) ;
 int kdb_set_current_task (struct task_struct*) ;
 int kdbgetularg (char const*,unsigned long*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int kdb_pid(int argc, const char **argv)
{
 struct task_struct *p;
 unsigned long val;
 int diag;

 if (argc > 1)
  return KDB_ARGCOUNT;

 if (argc) {
  if (strcmp(argv[1], "R") == 0) {
   p = KDB_TSK(kdb_initial_cpu);
  } else {
   diag = kdbgetularg(argv[1], &val);
   if (diag)
    return KDB_BADINT;

   p = find_task_by_pid_ns((pid_t)val, &init_pid_ns);
   if (!p) {
    kdb_printf("No task with pid=%d\n", (pid_t)val);
    return 0;
   }
  }
  kdb_set_current_task(p);
 }
 kdb_printf("KDB current process is %s(pid=%d)\n",
     kdb_current_task->comm,
     kdb_current_task->pid);

 return 0;
}
