
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; int sk; } ;
struct phy_device {TYPE_2__* drv; } ;
struct TYPE_4__ {int (* txtstamp ) (struct phy_device*,struct sk_buff*,unsigned int) ;} ;
struct TYPE_3__ {struct phy_device* phydev; } ;


 unsigned int PTP_CLASS_NONE ;
 unsigned int classify (struct sk_buff*) ;
 scalar_t__ likely (int (*) (struct phy_device*,struct sk_buff*,unsigned int)) ;
 struct sk_buff* skb_clone_sk (struct sk_buff*) ;
 int stub1 (struct phy_device*,struct sk_buff*,unsigned int) ;

void skb_clone_tx_timestamp(struct sk_buff *skb)
{
 struct phy_device *phydev;
 struct sk_buff *clone;
 unsigned int type;

 if (!skb->sk)
  return;

 type = classify(skb);
 if (type == PTP_CLASS_NONE)
  return;

 phydev = skb->dev->phydev;
 if (likely(phydev->drv->txtstamp)) {
  clone = skb_clone_sk(skb);
  if (!clone)
   return;
  phydev->drv->txtstamp(phydev, clone, type);
 }
}
