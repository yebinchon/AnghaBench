
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process_filter {scalar_t__ pid; struct process_filter* next; int name; } ;
struct per_pidcomm {int comm; } ;
struct per_pid {scalar_t__ pid; } ;


 struct process_filter* process_filter ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int passes_filter(struct per_pid *p, struct per_pidcomm *c)
{
 struct process_filter *filt;
 if (!process_filter)
  return 1;

 filt = process_filter;
 while (filt) {
  if (filt->pid && p->pid == filt->pid)
   return 1;
  if (strcmp(filt->name, c->comm) == 0)
   return 1;
  filt = filt->next;
 }
 return 0;
}
