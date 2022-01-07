
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; TYPE_1__* dev; } ;
struct TYPE_2__ {int type; } ;




 int EINVAL ;
 int ETH_P_802_2 ;
 int dev_hard_header (struct sk_buff*,TYPE_1__*,int ,unsigned char const*,unsigned char const*,int ) ;

int llc_mac_hdr_init(struct sk_buff *skb,
       const unsigned char *sa, const unsigned char *da)
{
 int rc = -EINVAL;

 switch (skb->dev->type) {
 case 129:
 case 128:
  rc = dev_hard_header(skb, skb->dev, ETH_P_802_2, da, sa,
         skb->len);
  if (rc > 0)
   rc = 0;
  break;
 default:
  break;
 }
 return rc;
}
