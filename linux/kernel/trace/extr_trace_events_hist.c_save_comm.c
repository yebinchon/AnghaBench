
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ pid; int comm; } ;


 int TASK_COMM_LEN ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int strcpy (char*,char*) ;
 int strncpy (char*,int ,int ) ;

__attribute__((used)) static inline void save_comm(char *comm, struct task_struct *task)
{
 if (!task->pid) {
  strcpy(comm, "<idle>");
  return;
 }

 if (WARN_ON_ONCE(task->pid < 0)) {
  strcpy(comm, "<XXX>");
  return;
 }

 strncpy(comm, task->comm, TASK_COMM_LEN);
}
