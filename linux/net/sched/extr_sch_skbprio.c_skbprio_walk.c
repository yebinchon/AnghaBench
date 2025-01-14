
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdisc_walker {int stop; scalar_t__ count; scalar_t__ skip; scalar_t__ (* fn ) (struct Qdisc*,unsigned int,struct qdisc_walker*) ;} ;
struct Qdisc {int dummy; } ;


 unsigned int SKBPRIO_MAX_PRIORITY ;
 scalar_t__ stub1 (struct Qdisc*,unsigned int,struct qdisc_walker*) ;

__attribute__((used)) static void skbprio_walk(struct Qdisc *sch, struct qdisc_walker *arg)
{
 unsigned int i;

 if (arg->stop)
  return;

 for (i = 0; i < SKBPRIO_MAX_PRIORITY; i++) {
  if (arg->count < arg->skip) {
   arg->count++;
   continue;
  }
  if (arg->fn(sch, i + 1, arg) < 0) {
   arg->stop = 1;
   break;
  }
  arg->count++;
 }
}
