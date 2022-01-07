
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int mac_proto; } ;
struct sk_buff {scalar_t__ protocol; } ;


 int ETH_P_TEB ;
 int MAC_PROTO_ETHERNET ;
 int MAC_PROTO_NONE ;
 scalar_t__ htons (int ) ;
 int invalidate_flow_key (struct sw_flow_key*) ;
 int nsh_pop (struct sk_buff*) ;

__attribute__((used)) static int pop_nsh(struct sk_buff *skb, struct sw_flow_key *key)
{
 int err;

 err = nsh_pop(skb);
 if (err)
  return err;


 if (skb->protocol == htons(ETH_P_TEB))
  key->mac_proto = MAC_PROTO_ETHERNET;
 else
  key->mac_proto = MAC_PROTO_NONE;
 invalidate_flow_key(key);
 return 0;
}
