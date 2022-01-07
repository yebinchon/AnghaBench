
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int len; } ;
struct dccp_hdr {int dummy; } ;


 scalar_t__ DCCP_OPEN ;
 struct dccp_hdr* dccp_hdr (struct sk_buff*) ;
 scalar_t__ dccp_rcv_established (struct sock*,struct sk_buff*,struct dccp_hdr*,int ) ;
 scalar_t__ dccp_rcv_state_process (struct sock*,struct sk_buff*,struct dccp_hdr*,int ) ;
 int dccp_v4_ctl_send_reset (struct sock*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;

int dccp_v4_do_rcv(struct sock *sk, struct sk_buff *skb)
{
 struct dccp_hdr *dh = dccp_hdr(skb);

 if (sk->sk_state == DCCP_OPEN) {
  if (dccp_rcv_established(sk, skb, dh, skb->len))
   goto reset;
  return 0;
 }
 if (dccp_rcv_state_process(sk, skb, dh, skb->len))
  goto reset;
 return 0;

reset:
 dccp_v4_ctl_send_reset(sk, skb);
 kfree_skb(skb);
 return 0;
}
