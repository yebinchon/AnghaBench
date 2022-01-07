
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reo_wnd_steps; } ;
struct tcp_sock {unsigned int app_limited; TYPE_1__ rack; scalar_t__ tsoffset; int reordering; int mss_cache; int snd_cwnd_clamp; int snd_ssthresh; int snd_cwnd; int rtt_min; int mdev_us; int tsorted_sent_queue; int tsq_node; void* out_of_order_queue; } ;
struct sock {int sk_route_forced_caps; int sk_rcvbuf; int sk_sndbuf; int sk_write_space; int sk_state; void* tcp_rtx_queue; } ;
struct inet_connection_sock {int icsk_sync_mss; int icsk_rto; } ;
struct TYPE_5__ {int * sysctl_tcp_rmem; int * sysctl_tcp_wmem; int sysctl_tcp_reordering; } ;
struct TYPE_6__ {TYPE_2__ ipv4; } ;


 int INIT_LIST_HEAD (int *) ;
 int NETIF_F_GSO ;
 void* RB_ROOT ;
 int SOCK_USE_WRITE_QUEUE ;
 int TCP_CLOSE ;
 int TCP_INFINITE_SSTHRESH ;
 int TCP_INIT_CWND ;
 int TCP_MSS_DEFAULT ;
 int TCP_TIMEOUT_INIT ;
 int WRITE_ONCE (int ,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int jiffies_to_usecs (int ) ;
 int minmax_reset (int *,int ,unsigned int) ;
 int sk_sockets_allocated_inc (struct sock*) ;
 int sk_stream_write_space ;
 TYPE_3__* sock_net (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;
 int tcp_assign_congestion_control (struct sock*) ;
 int tcp_init_xmit_timers (struct sock*) ;
 int tcp_jiffies32 ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_sync_mss ;

void tcp_init_sock(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct tcp_sock *tp = tcp_sk(sk);

 tp->out_of_order_queue = RB_ROOT;
 sk->tcp_rtx_queue = RB_ROOT;
 tcp_init_xmit_timers(sk);
 INIT_LIST_HEAD(&tp->tsq_node);
 INIT_LIST_HEAD(&tp->tsorted_sent_queue);

 icsk->icsk_rto = TCP_TIMEOUT_INIT;
 tp->mdev_us = jiffies_to_usecs(TCP_TIMEOUT_INIT);
 minmax_reset(&tp->rtt_min, tcp_jiffies32, ~0U);






 tp->snd_cwnd = TCP_INIT_CWND;


 tp->app_limited = ~0U;




 tp->snd_ssthresh = TCP_INFINITE_SSTHRESH;
 tp->snd_cwnd_clamp = ~0;
 tp->mss_cache = TCP_MSS_DEFAULT;

 tp->reordering = sock_net(sk)->ipv4.sysctl_tcp_reordering;
 tcp_assign_congestion_control(sk);

 tp->tsoffset = 0;
 tp->rack.reo_wnd_steps = 1;

 sk->sk_state = TCP_CLOSE;

 sk->sk_write_space = sk_stream_write_space;
 sock_set_flag(sk, SOCK_USE_WRITE_QUEUE);

 icsk->icsk_sync_mss = tcp_sync_mss;

 WRITE_ONCE(sk->sk_sndbuf, sock_net(sk)->ipv4.sysctl_tcp_wmem[1]);
 WRITE_ONCE(sk->sk_rcvbuf, sock_net(sk)->ipv4.sysctl_tcp_rmem[1]);

 sk_sockets_allocated_inc(sk);
 sk->sk_route_forced_caps = NETIF_F_GSO;
}
