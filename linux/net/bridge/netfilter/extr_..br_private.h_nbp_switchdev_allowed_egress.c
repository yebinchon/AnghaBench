
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge_port {int dummy; } ;



__attribute__((used)) static inline bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
      const struct sk_buff *skb)
{
 return 1;
}
