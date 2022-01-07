
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int nonagle; int write_seq; } ;
struct tcp_skb_cb {scalar_t__ sacked; int tcp_flags; int end_seq; int seq; } ;
struct sock {int dummy; } ;
struct sk_buff {int truesize; scalar_t__ csum; } ;


 int TCPHDR_ACK ;
 int TCP_NAGLE_PUSH ;
 struct tcp_skb_cb* TCP_SKB_CB (struct sk_buff*) ;
 int __skb_header_release (struct sk_buff*) ;
 int sk_mem_charge (struct sock*,int ) ;
 int sk_wmem_queued_add (struct sock*,int ) ;
 int tcp_add_write_queue_tail (struct sock*,struct sk_buff*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_slow_start_after_idle_check (struct sock*) ;

__attribute__((used)) static void skb_entail(struct sock *sk, struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct tcp_skb_cb *tcb = TCP_SKB_CB(skb);

 skb->csum = 0;
 tcb->seq = tcb->end_seq = tp->write_seq;
 tcb->tcp_flags = TCPHDR_ACK;
 tcb->sacked = 0;
 __skb_header_release(skb);
 tcp_add_write_queue_tail(sk, skb);
 sk_wmem_queued_add(sk, skb->truesize);
 sk_mem_charge(sk, skb->truesize);
 if (tp->nonagle & TCP_NAGLE_PUSH)
  tp->nonagle &= ~TCP_NAGLE_PUSH;

 tcp_slow_start_after_idle_check(sk);
}
