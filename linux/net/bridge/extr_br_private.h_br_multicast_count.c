
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;



__attribute__((used)) static inline void br_multicast_count(struct net_bridge *br,
          const struct net_bridge_port *p,
          const struct sk_buff *skb,
          u8 type, u8 dir)
{
}
