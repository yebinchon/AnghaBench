
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {struct cmdline_list* cmdlist; } ;
struct tep_cmdline {int dummy; } ;
struct cmdline_list {struct cmdline_list* next; int comm; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct tep_cmdline *
pid_from_cmdlist(struct tep_handle *tep, const char *comm, struct tep_cmdline *next)
{
 struct cmdline_list *cmdlist = (struct cmdline_list *)next;

 if (cmdlist)
  cmdlist = cmdlist->next;
 else
  cmdlist = tep->cmdlist;

 while (cmdlist && strcmp(cmdlist->comm, comm) != 0)
  cmdlist = cmdlist->next;

 return (struct tep_cmdline *)cmdlist;
}
