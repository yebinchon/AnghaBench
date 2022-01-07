
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int pid; } ;


 int wait_or_whine (int ) ;

int finish_command(struct child_process *cmd)
{
 return wait_or_whine(cmd->pid);
}
