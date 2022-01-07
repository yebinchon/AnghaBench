
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_bridge_port {int dummy; } ;



__attribute__((used)) static inline bool br_should_learn(struct net_bridge_port *p,
       struct sk_buff *skb, u16 *vid)
{
 return 1;
}
