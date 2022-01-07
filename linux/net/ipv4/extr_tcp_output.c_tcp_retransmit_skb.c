
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {scalar_t__ undo_retrans; scalar_t__ retrans_stamp; int retrans_out; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sacked; } ;


 int TCPCB_RETRANS ;
 int TCPCB_SACKED_RETRANS ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 int __tcp_retransmit_skb (struct sock*,struct sk_buff*,int) ;
 int net_dbg_ratelimited (char*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_skb_pcount (struct sk_buff*) ;
 scalar_t__ tcp_skb_timestamp (struct sk_buff*) ;

int tcp_retransmit_skb(struct sock *sk, struct sk_buff *skb, int segs)
{
 struct tcp_sock *tp = tcp_sk(sk);
 int err = __tcp_retransmit_skb(sk, skb, segs);

 if (err == 0) {





  TCP_SKB_CB(skb)->sacked |= TCPCB_RETRANS;
  tp->retrans_out += tcp_skb_pcount(skb);
 }


 if (!tp->retrans_stamp)
  tp->retrans_stamp = tcp_skb_timestamp(skb);

 if (tp->undo_retrans < 0)
  tp->undo_retrans = 0;
 tp->undo_retrans += tcp_skb_pcount(skb);
 return err;
}
