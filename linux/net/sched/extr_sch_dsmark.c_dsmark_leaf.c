
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsmark_qdisc_data {struct Qdisc* q; } ;
struct Qdisc {int dummy; } ;


 struct dsmark_qdisc_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct Qdisc *dsmark_leaf(struct Qdisc *sch, unsigned long arg)
{
 struct dsmark_qdisc_data *p = qdisc_priv(sch);
 return p->q;
}
