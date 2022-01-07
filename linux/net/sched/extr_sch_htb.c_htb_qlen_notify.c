
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htb_class {int dummy; } ;
struct Qdisc {int dummy; } ;


 int htb_deactivate (int ,struct htb_class*) ;
 int qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void htb_qlen_notify(struct Qdisc *sch, unsigned long arg)
{
 struct htb_class *cl = (struct htb_class *)arg;

 htb_deactivate(qdisc_priv(sch), cl);
}
