
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pid; } ;
typedef int buffer ;


 int KDB_BADADDR ;
 scalar_t__ kdb_getarea (char,unsigned long) ;
 int kdb_getstr (char*,int,char*) ;
 int kdb_printf (char*,...) ;
 int kdb_ps1 (struct task_struct*) ;
 int kdb_show_stack (struct task_struct*,int *) ;
 int kdb_task_state (struct task_struct*,unsigned long) ;
 int touch_nmi_watchdog () ;

__attribute__((used)) static int
kdb_bt1(struct task_struct *p, unsigned long mask,
 int argcount, int btaprompt)
{
 char buffer[2];
 if (kdb_getarea(buffer[0], (unsigned long)p) ||
     kdb_getarea(buffer[0], (unsigned long)(p+1)-1))
  return KDB_BADADDR;
 if (!kdb_task_state(p, mask))
  return 0;
 kdb_printf("Stack traceback for pid %d\n", p->pid);
 kdb_ps1(p);
 kdb_show_stack(p, ((void*)0));
 if (btaprompt) {
  kdb_getstr(buffer, sizeof(buffer),
      "Enter <q> to end, <cr> to continue:");
  if (buffer[0] == 'q') {
   kdb_printf("\n");
   return 1;
  }
 }
 touch_nmi_watchdog();
 return 0;
}
