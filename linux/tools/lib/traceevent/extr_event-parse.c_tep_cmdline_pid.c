
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int cmdline_count; struct tep_cmdline* cmdlines; } ;
struct tep_cmdline {int pid; } ;
struct cmdline_list {int pid; } ;



int tep_cmdline_pid(struct tep_handle *tep, struct tep_cmdline *cmdline)
{
 struct cmdline_list *cmdlist = (struct cmdline_list *)cmdline;

 if (!cmdline)
  return -1;





 if (!tep->cmdlines ||
     cmdline < tep->cmdlines ||
     cmdline >= tep->cmdlines + tep->cmdline_count)
  return cmdlist->pid;

 return cmdline->pid;
}
