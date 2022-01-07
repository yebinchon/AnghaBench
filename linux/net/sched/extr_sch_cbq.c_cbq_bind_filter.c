
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cbq_sched_data {int dummy; } ;
struct cbq_class {scalar_t__ level; int filters; } ;
struct Qdisc {int dummy; } ;


 struct cbq_class* cbq_class_lookup (struct cbq_sched_data*,int ) ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static unsigned long cbq_bind_filter(struct Qdisc *sch, unsigned long parent,
         u32 classid)
{
 struct cbq_sched_data *q = qdisc_priv(sch);
 struct cbq_class *p = (struct cbq_class *)parent;
 struct cbq_class *cl = cbq_class_lookup(q, classid);

 if (cl) {
  if (p && p->level <= cl->level)
   return 0;
  cl->filters++;
  return (unsigned long)cl;
 }
 return 0;
}
