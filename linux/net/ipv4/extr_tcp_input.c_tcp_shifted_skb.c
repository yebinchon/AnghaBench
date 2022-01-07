
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tcp_sock {unsigned int lost_cnt_hint; struct sk_buff* lost_skb_hint; struct sk_buff* retransmit_skb_hint; } ;
struct tcp_sacktag_state {int rate; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ delivered_mstamp; } ;
struct TYPE_4__ {int seq; int sacked; int tcp_gso_size; int tcp_flags; TYPE_1__ tx; scalar_t__ end_seq; int eor; } ;


 int BUG_ON (int) ;
 int LINUX_MIB_SACKMERGED ;
 int LINUX_MIB_SACKSHIFTED ;
 int NET_INC_STATS (int ,int ) ;
 int TCPCB_EVER_RETRANS ;
 int TCPHDR_FIN ;
 TYPE_2__* TCP_SKB_CB (struct sk_buff*) ;
 int WARN_ON_ONCE (int) ;
 int sock_net (struct sock*) ;
 int tcp_advance_highest_sack (struct sock*,struct sk_buff*) ;
 struct sk_buff* tcp_highest_sack (struct sock*) ;
 int tcp_rate_skb_delivered (struct sock*,struct sk_buff*,int ) ;
 int tcp_rtx_queue_unlink_and_free (struct sk_buff*,struct sock*) ;
 int tcp_sacktag_one (struct sock*,struct tcp_sacktag_state*,int,int,int,int,unsigned int,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_skb_collapse_tstamp (struct sk_buff*,struct sk_buff*) ;
 int tcp_skb_pcount (struct sk_buff*) ;
 int tcp_skb_pcount_add (struct sk_buff*,unsigned int) ;
 int tcp_skb_timestamp_us (struct sk_buff*) ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static bool tcp_shifted_skb(struct sock *sk, struct sk_buff *prev,
       struct sk_buff *skb,
       struct tcp_sacktag_state *state,
       unsigned int pcount, int shifted, int mss,
       bool dup_sack)
{
 struct tcp_sock *tp = tcp_sk(sk);
 u32 start_seq = TCP_SKB_CB(skb)->seq;
 u32 end_seq = start_seq + shifted;

 BUG_ON(!pcount);







 tcp_sacktag_one(sk, state, TCP_SKB_CB(skb)->sacked,
   start_seq, end_seq, dup_sack, pcount,
   tcp_skb_timestamp_us(skb));
 tcp_rate_skb_delivered(sk, skb, state->rate);

 if (skb == tp->lost_skb_hint)
  tp->lost_cnt_hint += pcount;

 TCP_SKB_CB(prev)->end_seq += shifted;
 TCP_SKB_CB(skb)->seq += shifted;

 tcp_skb_pcount_add(prev, pcount);
 WARN_ON_ONCE(tcp_skb_pcount(skb) < pcount);
 tcp_skb_pcount_add(skb, -pcount);






 if (!TCP_SKB_CB(prev)->tcp_gso_size)
  TCP_SKB_CB(prev)->tcp_gso_size = mss;


 if (tcp_skb_pcount(skb) <= 1)
  TCP_SKB_CB(skb)->tcp_gso_size = 0;


 TCP_SKB_CB(prev)->sacked |= (TCP_SKB_CB(skb)->sacked & TCPCB_EVER_RETRANS);

 if (skb->len > 0) {
  BUG_ON(!tcp_skb_pcount(skb));
  NET_INC_STATS(sock_net(sk), LINUX_MIB_SACKSHIFTED);
  return 0;
 }



 if (skb == tp->retransmit_skb_hint)
  tp->retransmit_skb_hint = prev;
 if (skb == tp->lost_skb_hint) {
  tp->lost_skb_hint = prev;
  tp->lost_cnt_hint -= tcp_skb_pcount(prev);
 }

 TCP_SKB_CB(prev)->tcp_flags |= TCP_SKB_CB(skb)->tcp_flags;
 TCP_SKB_CB(prev)->eor = TCP_SKB_CB(skb)->eor;
 if (TCP_SKB_CB(skb)->tcp_flags & TCPHDR_FIN)
  TCP_SKB_CB(prev)->end_seq++;

 if (skb == tcp_highest_sack(sk))
  tcp_advance_highest_sack(sk, skb);

 tcp_skb_collapse_tstamp(prev, skb);
 if (unlikely(TCP_SKB_CB(prev)->tx.delivered_mstamp))
  TCP_SKB_CB(prev)->tx.delivered_mstamp = 0;

 tcp_rtx_queue_unlink_and_free(skb, sk);

 NET_INC_STATS(sock_net(sk), LINUX_MIB_SACKMERGED);

 return 1;
}
