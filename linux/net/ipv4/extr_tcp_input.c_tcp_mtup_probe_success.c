
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int snd_cwnd; void* snd_ssthresh; int snd_cwnd_stamp; scalar_t__ snd_cwnd_cnt; int mss_cache; void* prior_ssthresh; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int probe_size; int search_low; } ;
struct inet_connection_sock {int icsk_pmtu_cookie; TYPE_1__ icsk_mtup; } ;


 int LINUX_MIB_TCPMTUPSUCCESS ;
 int NET_INC_STATS (int ,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int sock_net (struct sock*) ;
 void* tcp_current_ssthresh (struct sock*) ;
 int tcp_jiffies32 ;
 int tcp_mss_to_mtu (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_sync_mss (struct sock*,int ) ;

__attribute__((used)) static void tcp_mtup_probe_success(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);


 tp->prior_ssthresh = tcp_current_ssthresh(sk);
 tp->snd_cwnd = tp->snd_cwnd *
         tcp_mss_to_mtu(sk, tp->mss_cache) /
         icsk->icsk_mtup.probe_size;
 tp->snd_cwnd_cnt = 0;
 tp->snd_cwnd_stamp = tcp_jiffies32;
 tp->snd_ssthresh = tcp_current_ssthresh(sk);

 icsk->icsk_mtup.search_low = icsk->icsk_mtup.probe_size;
 icsk->icsk_mtup.probe_size = 0;
 tcp_sync_mss(sk, icsk->icsk_pmtu_cookie);
 NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPMTUPSUCCESS);
}
