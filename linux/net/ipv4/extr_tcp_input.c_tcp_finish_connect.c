
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int snd_wscale; } ;
struct tcp_sock {scalar_t__ pred_flags; int snd_wnd; TYPE_2__ rx_opt; void* lsndtime; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {void* lrcvtime; } ;
struct inet_connection_sock {TYPE_1__* icsk_af_ops; TYPE_3__ icsk_ack; } ;
struct TYPE_4__ {int (* sk_rx_dst_set ) (struct sock*,struct sk_buff*) ;} ;


 int BPF_SOCK_OPS_ACTIVE_ESTABLISHED_CB ;
 int SOCK_KEEPOPEN ;
 int TCP_ESTABLISHED ;
 int __tcp_fast_path_on (struct tcp_sock*,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_reset_keepalive_timer (struct sock*,int ) ;
 int keepalive_time_when (struct tcp_sock*) ;
 int security_inet_conn_established (struct sock*,struct sk_buff*) ;
 int sk_mark_napi_id (struct sock*,struct sk_buff*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*,struct sk_buff*) ;
 int tcp_init_transfer (struct sock*,int ) ;
 void* tcp_jiffies32 ;
 int tcp_set_state (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

void tcp_finish_connect(struct sock *sk, struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);

 tcp_set_state(sk, TCP_ESTABLISHED);
 icsk->icsk_ack.lrcvtime = tcp_jiffies32;

 if (skb) {
  icsk->icsk_af_ops->sk_rx_dst_set(sk, skb);
  security_inet_conn_established(sk, skb);
  sk_mark_napi_id(sk, skb);
 }

 tcp_init_transfer(sk, BPF_SOCK_OPS_ACTIVE_ESTABLISHED_CB);




 tp->lsndtime = tcp_jiffies32;

 if (sock_flag(sk, SOCK_KEEPOPEN))
  inet_csk_reset_keepalive_timer(sk, keepalive_time_when(tp));

 if (!tp->rx_opt.snd_wscale)
  __tcp_fast_path_on(tp, tp->snd_wnd);
 else
  tp->pred_flags = 0;
}
