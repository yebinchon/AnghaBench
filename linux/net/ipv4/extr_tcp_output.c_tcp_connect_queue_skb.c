
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int packets_out; int write_seq; } ;
struct tcp_skb_cb {int end_seq; } ;
struct sock {int dummy; } ;
struct sk_buff {int truesize; scalar_t__ len; } ;


 struct tcp_skb_cb* TCP_SKB_CB (struct sk_buff*) ;
 int WRITE_ONCE (int ,int ) ;
 int __skb_header_release (struct sk_buff*) ;
 int sk_mem_charge (struct sock*,int ) ;
 int sk_wmem_queued_add (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_skb_pcount (struct sk_buff*) ;

__attribute__((used)) static void tcp_connect_queue_skb(struct sock *sk, struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct tcp_skb_cb *tcb = TCP_SKB_CB(skb);

 tcb->end_seq += skb->len;
 __skb_header_release(skb);
 sk_wmem_queued_add(sk, skb->truesize);
 sk_mem_charge(sk, skb->truesize);
 WRITE_ONCE(tp->write_seq, tcb->end_seq);
 tp->packets_out += tcp_skb_pcount(skb);
}
