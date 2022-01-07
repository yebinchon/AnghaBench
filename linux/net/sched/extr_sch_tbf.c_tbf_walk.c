
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdisc_walker {int stop; scalar_t__ count; scalar_t__ skip; scalar_t__ (* fn ) (struct Qdisc*,int,struct qdisc_walker*) ;} ;
struct Qdisc {int dummy; } ;


 scalar_t__ stub1 (struct Qdisc*,int,struct qdisc_walker*) ;

__attribute__((used)) static void tbf_walk(struct Qdisc *sch, struct qdisc_walker *walker)
{
 if (!walker->stop) {
  if (walker->count >= walker->skip)
   if (walker->fn(sch, 1, walker) < 0) {
    walker->stop = 1;
    return;
   }
  walker->count++;
 }
}
