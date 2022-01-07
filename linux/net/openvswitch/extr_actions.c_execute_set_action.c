
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ovs_tunnel_info {scalar_t__ tun_dst; } ;
struct nlattr {int dummy; } ;
struct dst_entry {int dummy; } ;


 int EINVAL ;
 scalar_t__ OVS_KEY_ATTR_TUNNEL_INFO ;
 int dst_hold (struct dst_entry*) ;
 struct ovs_tunnel_info* nla_data (struct nlattr const*) ;
 scalar_t__ nla_type (struct nlattr const*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;

__attribute__((used)) static int execute_set_action(struct sk_buff *skb,
         struct sw_flow_key *flow_key,
         const struct nlattr *a)
{

 if (nla_type(a) == OVS_KEY_ATTR_TUNNEL_INFO) {
  struct ovs_tunnel_info *tun = nla_data(a);

  skb_dst_drop(skb);
  dst_hold((struct dst_entry *)tun->tun_dst);
  skb_dst_set(skb, (struct dst_entry *)tun->tun_dst);
  return 0;
 }

 return -EINVAL;
}
