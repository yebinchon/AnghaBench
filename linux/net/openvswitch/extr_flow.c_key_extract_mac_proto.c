
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; TYPE_1__* dev; } ;
struct TYPE_2__ {int type; } ;




 int EINVAL ;
 int ETH_P_TEB ;
 int MAC_PROTO_ETHERNET ;
 int MAC_PROTO_NONE ;
 int WARN_ON_ONCE (int) ;
 int htons (int ) ;

__attribute__((used)) static int key_extract_mac_proto(struct sk_buff *skb)
{
 switch (skb->dev->type) {
 case 129:
  return MAC_PROTO_ETHERNET;
 case 128:
  if (skb->protocol == htons(ETH_P_TEB))
   return MAC_PROTO_ETHERNET;
  return MAC_PROTO_NONE;
 }
 WARN_ON_ONCE(1);
 return -EINVAL;
}
