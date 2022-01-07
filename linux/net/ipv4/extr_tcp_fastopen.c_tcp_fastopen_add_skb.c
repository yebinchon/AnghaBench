
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {scalar_t__ rcv_nxt; int syn_data_acked; int bytes_received; scalar_t__ segs_in; } ;
struct sock {int sk_receive_queue; } ;
struct sk_buff {int len; int truesize; } ;
struct TYPE_2__ {scalar_t__ end_seq; int tcp_flags; int seq; } ;


 int GFP_ATOMIC ;
 int TCPHDR_FIN ;
 int TCPHDR_SYN ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 int __skb_pull (struct sk_buff*,int ) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int sk_forced_mem_schedule (struct sock*,int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int tcp_fin (struct sock*) ;
 int tcp_hdrlen (struct sk_buff*) ;
 int tcp_segs_in (struct tcp_sock*,struct sk_buff*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

void tcp_fastopen_add_skb(struct sock *sk, struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (TCP_SKB_CB(skb)->end_seq == tp->rcv_nxt)
  return;

 skb = skb_clone(skb, GFP_ATOMIC);
 if (!skb)
  return;

 skb_dst_drop(skb);






 tp->segs_in = 0;
 tcp_segs_in(tp, skb);
 __skb_pull(skb, tcp_hdrlen(skb));
 sk_forced_mem_schedule(sk, skb->truesize);
 skb_set_owner_r(skb, sk);

 TCP_SKB_CB(skb)->seq++;
 TCP_SKB_CB(skb)->tcp_flags &= ~TCPHDR_SYN;

 tp->rcv_nxt = TCP_SKB_CB(skb)->end_seq;
 __skb_queue_tail(&sk->sk_receive_queue, skb);
 tp->syn_data_acked = 1;




 tp->bytes_received = skb->len;

 if (TCP_SKB_CB(skb)->tcp_flags & TCPHDR_FIN)
  tcp_fin(sk);
}
