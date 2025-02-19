
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {size_t len; } ;
struct datapath {int user_features; } ;


 size_t NLA_ALIGN (size_t) ;
 int OVS_DP_F_UNALIGNED ;
 int skb_put_zero (struct sk_buff*,size_t) ;

__attribute__((used)) static void pad_packet(struct datapath *dp, struct sk_buff *skb)
{
 if (!(dp->user_features & OVS_DP_F_UNALIGNED)) {
  size_t plen = NLA_ALIGN(skb->len) - skb->len;

  if (plen > 0)
   skb_put_zero(skb, plen);
 }
}
