
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; int protocol; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct seg6_local_lwt {TYPE_1__ nh4; } ;
struct iphdr {int saddr; int daddr; } ;
typedef int __be32 ;


 int EINVAL ;
 int ETH_P_IP ;
 int IPPROTO_IPIP ;
 int decap_and_validate (struct sk_buff*,int ) ;
 int dst_input (struct sk_buff*) ;
 int htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_route_input (struct sk_buff*,int ,int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_dst_drop (struct sk_buff*) ;

__attribute__((used)) static int input_action_end_dx4(struct sk_buff *skb,
    struct seg6_local_lwt *slwt)
{
 struct iphdr *iph;
 __be32 nhaddr;
 int err;

 if (!decap_and_validate(skb, IPPROTO_IPIP))
  goto drop;

 if (!pskb_may_pull(skb, sizeof(struct iphdr)))
  goto drop;

 skb->protocol = htons(ETH_P_IP);

 iph = ip_hdr(skb);

 nhaddr = slwt->nh4.s_addr ?: iph->daddr;

 skb_dst_drop(skb);

 err = ip_route_input(skb, nhaddr, iph->saddr, 0, skb->dev);
 if (err)
  goto drop;

 return dst_input(skb);

drop:
 kfree_skb(skb);
 return -EINVAL;
}
