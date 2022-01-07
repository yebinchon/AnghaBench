
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int top_lse; } ;
struct sw_flow_key {TYPE_1__ mpls; } ;
struct sk_buff {int dummy; } ;
struct mpls_shim_hdr {int label_stack_entry; } ;
typedef int __be32 ;


 int OVS_MASKED (int ,int const,int const) ;
 struct mpls_shim_hdr* mpls_hdr (struct sk_buff*) ;
 int skb_mpls_update_lse (struct sk_buff*,int ) ;

__attribute__((used)) static int set_mpls(struct sk_buff *skb, struct sw_flow_key *flow_key,
      const __be32 *mpls_lse, const __be32 *mask)
{
 struct mpls_shim_hdr *stack;
 __be32 lse;
 int err;

 stack = mpls_hdr(skb);
 lse = OVS_MASKED(stack->label_stack_entry, *mpls_lse, *mask);
 err = skb_mpls_update_lse(skb, lse);
 if (err)
  return err;

 flow_key->mpls.top_lse = lse;
 return 0;
}
