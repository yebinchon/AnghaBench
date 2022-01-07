
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sk_buff {int mac_len; } ;
struct ovs_action_push_mpls {int mpls_ethertype; int mpls_lse; } ;


 int invalidate_flow_key (struct sw_flow_key*) ;
 int skb_mpls_push (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int push_mpls(struct sk_buff *skb, struct sw_flow_key *key,
       const struct ovs_action_push_mpls *mpls)
{
 int err;

 err = skb_mpls_push(skb, mpls->mpls_lse, mpls->mpls_ethertype,
       skb->mac_len);
 if (err)
  return err;

 invalidate_flow_key(key);
 return 0;
}
