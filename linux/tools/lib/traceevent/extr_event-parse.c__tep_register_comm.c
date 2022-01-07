
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int cmdline_count; struct cmdline_list* cmdlist; scalar_t__ cmdlines; } ;
struct cmdline_list {int pid; struct cmdline_list* next; void* comm; } ;


 int add_new_comm (struct tep_handle*,char const*,int,int) ;
 int free (struct cmdline_list*) ;
 struct cmdline_list* malloc (int) ;
 void* strdup (char const*) ;

__attribute__((used)) static int _tep_register_comm(struct tep_handle *tep,
         const char *comm, int pid, bool override)
{
 struct cmdline_list *item;

 if (tep->cmdlines)
  return add_new_comm(tep, comm, pid, override);

 item = malloc(sizeof(*item));
 if (!item)
  return -1;

 if (comm)
  item->comm = strdup(comm);
 else
  item->comm = strdup("<...>");
 if (!item->comm) {
  free(item);
  return -1;
 }
 item->pid = pid;
 item->next = tep->cmdlist;

 tep->cmdlist = item;
 tep->cmdline_count++;

 return 0;
}
