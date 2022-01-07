
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsc_class {scalar_t__ level; struct Qdisc* qdisc; } ;
struct Qdisc {int dummy; } ;



__attribute__((used)) static struct Qdisc *
hfsc_class_leaf(struct Qdisc *sch, unsigned long arg)
{
 struct hfsc_class *cl = (struct hfsc_class *)arg;

 if (cl->level == 0)
  return cl->qdisc;

 return ((void*)0);
}
