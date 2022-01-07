
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int packets_out; scalar_t__ snd_nxt; scalar_t__ tlp_high_seq; int snd_cwnd; } ;
struct sock {int sk_state; int tcp_rtx_queue; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {scalar_t__ icsk_pending; } ;


 int GFP_ATOMIC ;
 int LINUX_MIB_TCPLOSSPROBES ;
 int NET_INC_STATS (int ,int ) ;
 int TCP_FRAG_IN_RTX_QUEUE ;
 int TCP_NAGLE_OFF ;
 scalar_t__ WARN_ON (int) ;
 int WARN_ONCE (int,char*,int,int ,int ,int) ;
 scalar_t__ __tcp_retransmit_skb (struct sock*,struct sk_buff*,int) ;
 TYPE_1__* inet_csk (struct sock*) ;
 struct sk_buff* skb_rb_last (int *) ;
 struct sk_buff* skb_rb_next (struct sk_buff*) ;
 scalar_t__ skb_still_in_host_queue (struct sock*,struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int tcp_current_mss (struct sock*) ;
 int tcp_fragment (struct sock*,int ,struct sk_buff*,int,int,int ) ;
 int tcp_rearm_rto (struct sock*) ;
 struct sk_buff* tcp_send_head (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_skb_pcount (struct sk_buff*) ;
 scalar_t__ tcp_snd_wnd_test (struct tcp_sock*,struct sk_buff*,int) ;
 int tcp_write_xmit (struct sock*,int,int ,int,int ) ;
 scalar_t__ unlikely (int) ;

void tcp_send_loss_probe(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct sk_buff *skb;
 int pcount;
 int mss = tcp_current_mss(sk);

 skb = tcp_send_head(sk);
 if (skb && tcp_snd_wnd_test(tp, skb, mss)) {
  pcount = tp->packets_out;
  tcp_write_xmit(sk, mss, TCP_NAGLE_OFF, 2, GFP_ATOMIC);
  if (tp->packets_out > pcount)
   goto probe_sent;
  goto rearm_timer;
 }
 skb = skb_rb_last(&sk->tcp_rtx_queue);
 if (unlikely(!skb)) {
  WARN_ONCE(tp->packets_out,
     "invalid inflight: %u state %u cwnd %u mss %d\n",
     tp->packets_out, sk->sk_state, tp->snd_cwnd, mss);
  inet_csk(sk)->icsk_pending = 0;
  return;
 }


 if (tp->tlp_high_seq)
  goto rearm_timer;

 if (skb_still_in_host_queue(sk, skb))
  goto rearm_timer;

 pcount = tcp_skb_pcount(skb);
 if (WARN_ON(!pcount))
  goto rearm_timer;

 if ((pcount > 1) && (skb->len > (pcount - 1) * mss)) {
  if (unlikely(tcp_fragment(sk, TCP_FRAG_IN_RTX_QUEUE, skb,
       (pcount - 1) * mss, mss,
       GFP_ATOMIC)))
   goto rearm_timer;
  skb = skb_rb_next(skb);
 }

 if (WARN_ON(!skb || !tcp_skb_pcount(skb)))
  goto rearm_timer;

 if (__tcp_retransmit_skb(sk, skb, 1))
  goto rearm_timer;


 tp->tlp_high_seq = tp->snd_nxt;

probe_sent:
 NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPLOSSPROBES);

 inet_csk(sk)->icsk_pending = 0;
rearm_timer:
 tcp_rearm_rto(sk);
}
