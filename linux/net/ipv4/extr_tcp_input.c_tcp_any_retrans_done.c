
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {scalar_t__ retrans_out; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sacked; } ;


 int TCPCB_EVER_RETRANS ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 struct sk_buff* tcp_rtx_queue_head (struct sock const*) ;
 struct tcp_sock* tcp_sk (struct sock const*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool tcp_any_retrans_done(const struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 struct sk_buff *skb;

 if (tp->retrans_out)
  return 1;

 skb = tcp_rtx_queue_head(sk);
 if (unlikely(skb && TCP_SKB_CB(skb)->sacked & TCPCB_EVER_RETRANS))
  return 1;

 return 0;
}
