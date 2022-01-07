
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {unsigned int packets_out; int snd_nxt; } ;
struct sock {int tcp_rtx_queue; int sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_pending; } ;
struct TYPE_2__ {int end_seq; } ;


 scalar_t__ ICSK_TIME_LOSS_PROBE ;
 int LINUX_MIB_TCPORIGDATASENT ;
 int NET_ADD_STATS (int ,int ,scalar_t__) ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 int WRITE_ONCE (int ,int ) ;
 int __skb_unlink (struct sk_buff*,int *) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int sock_net (struct sock*) ;
 int tcp_rbtree_insert (int *,struct sk_buff*) ;
 int tcp_rearm_rto (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_skb_pcount (struct sk_buff*) ;

__attribute__((used)) static void tcp_event_new_data_sent(struct sock *sk, struct sk_buff *skb)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 unsigned int prior_packets = tp->packets_out;

 WRITE_ONCE(tp->snd_nxt, TCP_SKB_CB(skb)->end_seq);

 __skb_unlink(skb, &sk->sk_write_queue);
 tcp_rbtree_insert(&sk->tcp_rtx_queue, skb);

 tp->packets_out += tcp_skb_pcount(skb);
 if (!prior_packets || icsk->icsk_pending == ICSK_TIME_LOSS_PROBE)
  tcp_rearm_rto(sk);

 NET_ADD_STATS(sock_net(sk), LINUX_MIB_TCPORIGDATASENT,
        tcp_skb_pcount(skb));
}
