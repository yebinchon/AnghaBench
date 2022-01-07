
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int cmdline_count; struct cmdline_list* cmdlist; struct tep_cmdline* cmdlines; } ;
struct tep_cmdline {int comm; int pid; } ;
struct cmdline_list {struct cmdline_list* next; int comm; int pid; } ;


 int cmdline_cmp ;
 int free (struct cmdline_list*) ;
 struct tep_cmdline* malloc (int) ;
 int qsort (struct tep_cmdline*,int,int,int ) ;

__attribute__((used)) static int cmdline_init(struct tep_handle *tep)
{
 struct cmdline_list *cmdlist = tep->cmdlist;
 struct cmdline_list *item;
 struct tep_cmdline *cmdlines;
 int i;

 cmdlines = malloc(sizeof(*cmdlines) * tep->cmdline_count);
 if (!cmdlines)
  return -1;

 i = 0;
 while (cmdlist) {
  cmdlines[i].pid = cmdlist->pid;
  cmdlines[i].comm = cmdlist->comm;
  i++;
  item = cmdlist;
  cmdlist = cmdlist->next;
  free(item);
 }

 qsort(cmdlines, tep->cmdline_count, sizeof(*cmdlines), cmdline_cmp);

 tep->cmdlines = cmdlines;
 tep->cmdlist = ((void*)0);

 return 0;
}
