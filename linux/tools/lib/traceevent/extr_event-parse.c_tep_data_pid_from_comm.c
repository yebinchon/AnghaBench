
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int cmdline_count; struct tep_cmdline* cmdlines; } ;
struct tep_cmdline {int comm; } ;


 struct tep_cmdline* pid_from_cmdlist (struct tep_handle*,char const*,struct tep_cmdline*) ;
 scalar_t__ strcmp (int ,char const*) ;

struct tep_cmdline *tep_data_pid_from_comm(struct tep_handle *tep, const char *comm,
        struct tep_cmdline *next)
{
 struct tep_cmdline *cmdline;





 if (!tep->cmdlines)
  return pid_from_cmdlist(tep, comm, next);

 if (next) {




  if (next < tep->cmdlines ||
      next >= tep->cmdlines + tep->cmdline_count)
   next = ((void*)0);
  else
   cmdline = next++;
 }

 if (!next)
  cmdline = tep->cmdlines;

 while (cmdline < tep->cmdlines + tep->cmdline_count) {
  if (strcmp(cmdline->comm, comm) == 0)
   return cmdline;
  cmdline++;
 }
 return ((void*)0);
}
