
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcp_sock {int snd_una; } ;
struct tcp_sacktag_state {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int sacked; int end_seq; int seq; } ;


 int BUG_ON (int) ;
 int LINUX_MIB_SACKSHIFTFALLBACK ;
 int NET_INC_STATS (int ,int ) ;
 int TCPCB_LOST ;
 int TCPCB_SACKED_ACKED ;
 int TCPCB_SACKED_RETRANS ;
 int TCPCB_TAGBITS ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 int after (int,int) ;
 int before (int,int) ;
 int skb_can_shift (struct sk_buff*) ;
 struct sk_buff* skb_rb_next (struct sk_buff*) ;
 struct sk_buff* skb_rb_prev (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int tcp_shifted_skb (struct sock*,struct sk_buff*,struct sk_buff*,struct tcp_sacktag_state*,int,int,int,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_skb_can_collapse_to (struct sk_buff*) ;
 int tcp_skb_mss (struct sk_buff*) ;
 int tcp_skb_pcount (struct sk_buff*) ;
 int tcp_skb_seglen (struct sk_buff*) ;
 scalar_t__ tcp_skb_shift (struct sk_buff*,struct sk_buff*,int,int) ;

__attribute__((used)) static struct sk_buff *tcp_shift_skb_data(struct sock *sk, struct sk_buff *skb,
       struct tcp_sacktag_state *state,
       u32 start_seq, u32 end_seq,
       bool dup_sack)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct sk_buff *prev;
 int mss;
 int pcount = 0;
 int len;
 int in_sack;


 if (!dup_sack &&
     (TCP_SKB_CB(skb)->sacked & (TCPCB_LOST|TCPCB_SACKED_RETRANS)) == TCPCB_SACKED_RETRANS)
  goto fallback;
 if (!skb_can_shift(skb))
  goto fallback;

 if (!after(TCP_SKB_CB(skb)->end_seq, tp->snd_una))
  goto fallback;


 prev = skb_rb_prev(skb);
 if (!prev)
  goto fallback;

 if ((TCP_SKB_CB(prev)->sacked & TCPCB_TAGBITS) != TCPCB_SACKED_ACKED)
  goto fallback;

 if (!tcp_skb_can_collapse_to(prev))
  goto fallback;

 in_sack = !after(start_seq, TCP_SKB_CB(skb)->seq) &&
    !before(end_seq, TCP_SKB_CB(skb)->end_seq);

 if (in_sack) {
  len = skb->len;
  pcount = tcp_skb_pcount(skb);
  mss = tcp_skb_seglen(skb);




  if (mss != tcp_skb_seglen(prev))
   goto fallback;
 } else {
  if (!after(TCP_SKB_CB(skb)->end_seq, start_seq))
   goto noop;




  if (tcp_skb_pcount(skb) <= 1)
   goto noop;

  in_sack = !after(start_seq, TCP_SKB_CB(skb)->seq);
  if (!in_sack) {
   goto fallback;
  }

  len = end_seq - TCP_SKB_CB(skb)->seq;
  BUG_ON(len < 0);
  BUG_ON(len > skb->len);





  mss = tcp_skb_mss(skb);




  if (mss != tcp_skb_seglen(prev))
   goto fallback;

  if (len == mss) {
   pcount = 1;
  } else if (len < mss) {
   goto noop;
  } else {
   pcount = len / mss;
   len = pcount * mss;
  }
 }


 if (!after(TCP_SKB_CB(skb)->seq + len, tp->snd_una))
  goto fallback;

 if (!tcp_skb_shift(prev, skb, pcount, len))
  goto fallback;
 if (!tcp_shifted_skb(sk, prev, skb, state, pcount, len, mss, dup_sack))
  goto out;




 skb = skb_rb_next(prev);
 if (!skb)
  goto out;

 if (!skb_can_shift(skb) ||
     ((TCP_SKB_CB(skb)->sacked & TCPCB_TAGBITS) != TCPCB_SACKED_ACKED) ||
     (mss != tcp_skb_seglen(skb)))
  goto out;

 len = skb->len;
 pcount = tcp_skb_pcount(skb);
 if (tcp_skb_shift(prev, skb, pcount, len))
  tcp_shifted_skb(sk, prev, skb, state, pcount,
    len, mss, 0);

out:
 return prev;

noop:
 return skb;

fallback:
 NET_INC_STATS(sock_net(sk), LINUX_MIB_SACKSHIFTFALLBACK);
 return ((void*)0);
}
