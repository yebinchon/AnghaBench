
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;


 int IP_CT_UNTRACKED ;
 int nf_conntrack_put (scalar_t__) ;
 int nf_ct_set (struct sk_buff*,int *,int ) ;
 int ovs_ct_fill_key (struct sk_buff*,struct sw_flow_key*) ;
 scalar_t__ skb_nfct (struct sk_buff*) ;

int ovs_ct_clear(struct sk_buff *skb, struct sw_flow_key *key)
{
 if (skb_nfct(skb)) {
  nf_conntrack_put(skb_nfct(skb));
  nf_ct_set(skb, ((void*)0), IP_CT_UNTRACKED);
  ovs_ct_fill_key(skb, key);
 }

 return 0;
}
