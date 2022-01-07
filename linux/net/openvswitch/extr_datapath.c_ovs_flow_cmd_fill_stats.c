
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sw_flow {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ovs_flow_stats {scalar_t__ n_packets; } ;
typedef int __be16 ;


 int EMSGSIZE ;
 int OVS_FLOW_ATTR_PAD ;
 int OVS_FLOW_ATTR_STATS ;
 int OVS_FLOW_ATTR_TCP_FLAGS ;
 int OVS_FLOW_ATTR_USED ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct ovs_flow_stats*,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ ntohs (int ) ;
 int ovs_flow_stats_get (struct sw_flow const*,struct ovs_flow_stats*,unsigned long*,int *) ;
 int ovs_flow_used_time (unsigned long) ;

__attribute__((used)) static int ovs_flow_cmd_fill_stats(const struct sw_flow *flow,
       struct sk_buff *skb)
{
 struct ovs_flow_stats stats;
 __be16 tcp_flags;
 unsigned long used;

 ovs_flow_stats_get(flow, &stats, &used, &tcp_flags);

 if (used &&
     nla_put_u64_64bit(skb, OVS_FLOW_ATTR_USED, ovs_flow_used_time(used),
         OVS_FLOW_ATTR_PAD))
  return -EMSGSIZE;

 if (stats.n_packets &&
     nla_put_64bit(skb, OVS_FLOW_ATTR_STATS,
     sizeof(struct ovs_flow_stats), &stats,
     OVS_FLOW_ATTR_PAD))
  return -EMSGSIZE;

 if ((u8)ntohs(tcp_flags) &&
      nla_put_u8(skb, OVS_FLOW_ATTR_TCP_FLAGS, (u8)ntohs(tcp_flags)))
  return -EMSGSIZE;

 return 0;
}
