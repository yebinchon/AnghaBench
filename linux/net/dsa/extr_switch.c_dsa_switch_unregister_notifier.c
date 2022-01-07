
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {int dev; int nb; TYPE_1__* dst; } ;
struct TYPE_2__ {int nh; } ;


 int dev_err (int ,char*,int) ;
 int raw_notifier_chain_unregister (int *,int *) ;

void dsa_switch_unregister_notifier(struct dsa_switch *ds)
{
 int err;

 err = raw_notifier_chain_unregister(&ds->dst->nh, &ds->nb);
 if (err)
  dev_err(ds->dev, "failed to unregister notifier (%d)\n", err);
}
