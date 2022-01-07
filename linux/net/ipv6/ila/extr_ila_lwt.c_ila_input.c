
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ protocol; } ;
struct ila_lwt {int lwt_output; } ;
struct dst_entry {TYPE_1__* lwtstate; } ;
struct TYPE_3__ {int (* orig_input ) (struct sk_buff*) ;} ;


 int EINVAL ;
 int ETH_P_IPV6 ;
 scalar_t__ htons (int ) ;
 struct ila_lwt* ila_lwt_lwtunnel (TYPE_1__*) ;
 int ila_params_lwtunnel (TYPE_1__*) ;
 int ila_update_ipv6_locator (struct sk_buff*,int ,int) ;
 int kfree_skb (struct sk_buff*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int ila_input(struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 struct ila_lwt *ilwt = ila_lwt_lwtunnel(dst->lwtstate);

 if (skb->protocol != htons(ETH_P_IPV6))
  goto drop;

 if (!ilwt->lwt_output)
  ila_update_ipv6_locator(skb,
     ila_params_lwtunnel(dst->lwtstate),
     0);

 return dst->lwtstate->orig_input(skb);

drop:
 kfree_skb(skb);
 return -EINVAL;
}
