
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct atm_vcc {int dummy; } ;
struct atm_qdisc_data {int task; } ;
struct TYPE_2__ {int (* old_pop ) (struct atm_vcc*,struct sk_buff*) ;struct atm_qdisc_data* parent; } ;


 TYPE_1__* VCC2FLOW (struct atm_vcc*) ;
 int pr_debug (char*,struct atm_vcc*,struct sk_buff*,struct atm_qdisc_data*) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void sch_atm_pop(struct atm_vcc *vcc, struct sk_buff *skb)
{
 struct atm_qdisc_data *p = VCC2FLOW(vcc)->parent;

 pr_debug("sch_atm_pop(vcc %p,skb %p,[qdisc %p])\n", vcc, skb, p);
 VCC2FLOW(vcc)->old_pop(vcc, skb);
 tasklet_schedule(&p->task);
}
