
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dccp_hdr {int dummy; } ;


 int __dccp_rcv_established (struct sock*,struct sk_buff*,struct dccp_hdr const*,unsigned int const) ;
 int __kfree_skb (struct sk_buff*) ;
 scalar_t__ dccp_check_seqno (struct sock*,struct sk_buff*) ;
 int dccp_deliver_input_to_ccids (struct sock*,struct sk_buff*) ;
 int dccp_handle_ackvec_processing (struct sock*,struct sk_buff*) ;
 scalar_t__ dccp_parse_options (struct sock*,int *,struct sk_buff*) ;

int dccp_rcv_established(struct sock *sk, struct sk_buff *skb,
    const struct dccp_hdr *dh, const unsigned int len)
{
 if (dccp_check_seqno(sk, skb))
  goto discard;

 if (dccp_parse_options(sk, ((void*)0), skb))
  return 1;

 dccp_handle_ackvec_processing(sk, skb);
 dccp_deliver_input_to_ccids(sk, skb);

 return __dccp_rcv_established(sk, skb, dh, len);
discard:
 __kfree_skb(skb);
 return 0;
}
