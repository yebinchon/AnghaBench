
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timechart {int dummy; } ;
struct per_pidcomm {struct per_pidcomm* next; void* comm; } ;
struct per_pid {struct per_pidcomm* all; struct per_pidcomm* current; } ;


 int assert (int ) ;
 struct per_pid* find_create_pid (struct timechart*,int) ;
 scalar_t__ strcmp (void*,char*) ;
 void* strdup (char*) ;
 struct per_pidcomm* zalloc (int) ;

__attribute__((used)) static void pid_set_comm(struct timechart *tchart, int pid, char *comm)
{
 struct per_pid *p;
 struct per_pidcomm *c;
 p = find_create_pid(tchart, pid);
 c = p->all;
 while (c) {
  if (c->comm && strcmp(c->comm, comm) == 0) {
   p->current = c;
   return;
  }
  if (!c->comm) {
   c->comm = strdup(comm);
   p->current = c;
   return;
  }
  c = c->next;
 }
 c = zalloc(sizeof(*c));
 assert(c != ((void*)0));
 c->comm = strdup(comm);
 p->current = c;
 c->next = p->all;
 p->all = c;
}
