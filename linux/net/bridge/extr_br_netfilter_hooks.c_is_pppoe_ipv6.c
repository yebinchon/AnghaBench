
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; } ;
struct net {int dummy; } ;
struct brnf_net {scalar_t__ filter_pppoe_tagged; } ;


 int ETH_P_PPP_SES ;
 int PPP_IPV6 ;
 int brnf_net_id ;
 scalar_t__ htons (int ) ;
 struct brnf_net* net_generic (struct net const*,int ) ;
 scalar_t__ pppoe_proto (struct sk_buff const*) ;

__attribute__((used)) static inline bool is_pppoe_ipv6(const struct sk_buff *skb,
     const struct net *net)
{
 struct brnf_net *brnet = net_generic(net, brnf_net_id);

 return skb->protocol == htons(ETH_P_PPP_SES) &&
        pppoe_proto(skb) == htons(PPP_IPV6) &&
        brnet->filter_pppoe_tagged;
}
