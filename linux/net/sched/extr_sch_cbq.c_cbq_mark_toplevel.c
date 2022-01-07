
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbq_sched_data {int toplevel; } ;
struct cbq_class {int level; scalar_t__ undertime; struct cbq_class* borrow; } ;
typedef scalar_t__ psched_time_t ;


 scalar_t__ psched_get_time () ;

__attribute__((used)) static void
cbq_mark_toplevel(struct cbq_sched_data *q, struct cbq_class *cl)
{
 int toplevel = q->toplevel;

 if (toplevel > cl->level) {
  psched_time_t now = psched_get_time();

  do {
   if (cl->undertime < now) {
    q->toplevel = cl->level;
    return;
   }
  } while ((cl = cl->borrow) != ((void*)0) && toplevel > cl->level);
 }
}
