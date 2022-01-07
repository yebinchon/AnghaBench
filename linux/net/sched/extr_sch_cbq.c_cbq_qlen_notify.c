
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbq_class {int dummy; } ;
struct Qdisc {int dummy; } ;


 int cbq_deactivate_class (struct cbq_class*) ;

__attribute__((used)) static void cbq_qlen_notify(struct Qdisc *sch, unsigned long arg)
{
 struct cbq_class *cl = (struct cbq_class *)arg;

 cbq_deactivate_class(cl);
}
