
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* phydev; } ;
struct TYPE_3__ {scalar_t__ drv; } ;


 unsigned int PTP_CLASS_NONE ;
 scalar_t__ likely (int) ;
 unsigned int ptp_classify_raw (struct sk_buff const*) ;

__attribute__((used)) static unsigned int classify(const struct sk_buff *skb)
{
 if (likely(skb->dev && skb->dev->phydev &&
     skb->dev->phydev->drv))
  return ptp_classify_raw(skb);
 else
  return PTP_CLASS_NONE;
}
