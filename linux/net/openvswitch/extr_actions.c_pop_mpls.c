
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sk_buff {int mac_len; } ;
typedef int __be16 ;


 int invalidate_flow_key (struct sw_flow_key*) ;
 int skb_mpls_pop (struct sk_buff*,int const,int ) ;

__attribute__((used)) static int pop_mpls(struct sk_buff *skb, struct sw_flow_key *key,
      const __be16 ethertype)
{
 int err;

 err = skb_mpls_pop(skb, ethertype, skb->mac_len);
 if (err)
  return err;

 invalidate_flow_key(key);
 return 0;
}
