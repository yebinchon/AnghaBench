
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc_ops {int owner; int id; struct Qdisc_ops* next; } ;


 struct Qdisc_ops* qdisc_base ;
 int strcmp (char const*,int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct Qdisc_ops *qdisc_lookup_default(const char *name)
{
 struct Qdisc_ops *q = ((void*)0);

 for (q = qdisc_base; q; q = q->next) {
  if (!strcmp(name, q->id)) {
   if (!try_module_get(q->owner))
    q = ((void*)0);
   break;
  }
 }

 return q;
}
