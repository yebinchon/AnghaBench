
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int notifier_call; } ;
struct dsa_switch {TYPE_2__ nb; TYPE_1__* dst; } ;
struct TYPE_3__ {int nh; } ;


 int dsa_switch_event ;
 int raw_notifier_chain_register (int *,TYPE_2__*) ;

int dsa_switch_register_notifier(struct dsa_switch *ds)
{
 ds->nb.notifier_call = dsa_switch_event;

 return raw_notifier_chain_register(&ds->dst->nh, &ds->nb);
}
