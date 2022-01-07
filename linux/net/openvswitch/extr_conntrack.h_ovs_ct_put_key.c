
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;



__attribute__((used)) static inline int ovs_ct_put_key(const struct sw_flow_key *swkey,
     const struct sw_flow_key *output,
     struct sk_buff *skb)
{
 return 0;
}
