
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbq_class {int filters; } ;
struct Qdisc {int dummy; } ;



__attribute__((used)) static void cbq_unbind_filter(struct Qdisc *sch, unsigned long arg)
{
 struct cbq_class *cl = (struct cbq_class *)arg;

 cl->filters--;
}
