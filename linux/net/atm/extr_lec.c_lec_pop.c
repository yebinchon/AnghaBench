
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct lec_vcc_priv {scalar_t__ xoff; int (* old_pop ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct atm_vcc {int dummy; } ;


 struct lec_vcc_priv* LEC_VCC_PRIV (struct atm_vcc*) ;
 scalar_t__ atm_may_send (struct atm_vcc*,int ) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pr_info (char*) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;

__attribute__((used)) static void lec_pop(struct atm_vcc *vcc, struct sk_buff *skb)
{
 struct lec_vcc_priv *vpriv = LEC_VCC_PRIV(vcc);
 struct net_device *dev = skb->dev;

 if (vpriv == ((void*)0)) {
  pr_info("vpriv = NULL!?!?!?\n");
  return;
 }

 vpriv->old_pop(vcc, skb);

 if (vpriv->xoff && atm_may_send(vcc, 0)) {
  vpriv->xoff = 0;
  if (netif_running(dev) && netif_queue_stopped(dev))
   netif_wake_queue(dev);
 }
}
