
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct task_struct* group_leader; } ;


 int KDB_ARGCOUNT ;
 int KDB_BADINT ;
 struct task_struct* find_task_by_pid_ns (long,int *) ;
 int init_pid_ns ;
 int kdb_printf (char*) ;
 int kdb_send_sig (struct task_struct*,long) ;
 long simple_strtol (char const*,char**,int ) ;
 int valid_signal (long) ;

__attribute__((used)) static int kdb_kill(int argc, const char **argv)
{
 long sig, pid;
 char *endp;
 struct task_struct *p;

 if (argc != 2)
  return KDB_ARGCOUNT;

 sig = simple_strtol(argv[1], &endp, 0);
 if (*endp)
  return KDB_BADINT;
 if ((sig >= 0) || !valid_signal(-sig)) {
  kdb_printf("Invalid signal parameter.<-signal>\n");
  return 0;
 }
 sig = -sig;

 pid = simple_strtol(argv[2], &endp, 0);
 if (*endp)
  return KDB_BADINT;
 if (pid <= 0) {
  kdb_printf("Process ID must be large than 0.\n");
  return 0;
 }


 p = find_task_by_pid_ns(pid, &init_pid_ns);
 if (!p) {
  kdb_printf("The specified process isn't found.\n");
  return 0;
 }
 p = p->group_leader;
 kdb_send_sig(p, sig);
 return 0;
}
