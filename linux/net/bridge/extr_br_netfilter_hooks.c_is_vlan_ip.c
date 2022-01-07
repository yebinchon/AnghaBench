
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct brnf_net {scalar_t__ filter_vlan_tagged; } ;


 int ETH_P_IP ;
 int brnf_net_id ;
 scalar_t__ htons (int ) ;
 struct brnf_net* net_generic (struct net const*,int ) ;
 scalar_t__ vlan_proto (struct sk_buff const*) ;

__attribute__((used)) static inline bool is_vlan_ip(const struct sk_buff *skb, const struct net *net)
{
 struct brnf_net *brnet = net_generic(net, brnf_net_id);

 return vlan_proto(skb) == htons(ETH_P_IP) && brnet->filter_vlan_tagged;
}
