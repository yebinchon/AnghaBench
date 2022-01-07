
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int htons (int ) ;
 struct sk_buff* vlan_insert_tag (struct sk_buff*,int ,int ) ;

struct sk_buff *dsa_8021q_xmit(struct sk_buff *skb, struct net_device *netdev,
          u16 tpid, u16 tci)
{



 return vlan_insert_tag(skb, htons(tpid), tci);
}
