
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct Qdisc_ops {int owner; int id; struct Qdisc_ops* next; } ;


 scalar_t__ nla_strcmp (struct nlattr*,int ) ;
 struct Qdisc_ops* qdisc_base ;
 int qdisc_mod_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct Qdisc_ops *qdisc_lookup_ops(struct nlattr *kind)
{
 struct Qdisc_ops *q = ((void*)0);

 if (kind) {
  read_lock(&qdisc_mod_lock);
  for (q = qdisc_base; q; q = q->next) {
   if (nla_strcmp(kind, q->id) == 0) {
    if (!try_module_get(q->owner))
     q = ((void*)0);
    break;
   }
  }
  read_unlock(&qdisc_mod_lock);
 }
 return q;
}
