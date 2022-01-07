
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct br2684_vcc {int device; int qspace; int (* old_pop ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct atm_vcc {int dummy; } ;


 struct br2684_vcc* BR2684_VCC (struct atm_vcc*) ;
 int atomic_inc_return (int *) ;
 int netif_wake_queue (int ) ;
 int pr_debug (char*,struct atm_vcc*,int ) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;

__attribute__((used)) static void br2684_pop(struct atm_vcc *vcc, struct sk_buff *skb)
{
 struct br2684_vcc *brvcc = BR2684_VCC(vcc);

 pr_debug("(vcc %p ; net_dev %p )\n", vcc, brvcc->device);
 brvcc->old_pop(vcc, skb);


 if (atomic_inc_return(&brvcc->qspace) == 1)
  netif_wake_queue(brvcc->device);
}
