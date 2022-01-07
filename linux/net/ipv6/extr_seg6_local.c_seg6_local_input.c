
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; } ;
struct seg6_local_lwt {struct seg6_action_desc* desc; } ;
struct seg6_action_desc {int (* input ) (struct sk_buff*,struct seg6_local_lwt*) ;} ;
struct dst_entry {int lwtstate; } ;


 int EINVAL ;
 int ETH_P_IPV6 ;
 scalar_t__ htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct seg6_local_lwt* seg6_local_lwtunnel (int ) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int stub1 (struct sk_buff*,struct seg6_local_lwt*) ;

__attribute__((used)) static int seg6_local_input(struct sk_buff *skb)
{
 struct dst_entry *orig_dst = skb_dst(skb);
 struct seg6_action_desc *desc;
 struct seg6_local_lwt *slwt;

 if (skb->protocol != htons(ETH_P_IPV6)) {
  kfree_skb(skb);
  return -EINVAL;
 }

 slwt = seg6_local_lwtunnel(orig_dst->lwtstate);
 desc = slwt->desc;

 return desc->input(skb, slwt);
}
