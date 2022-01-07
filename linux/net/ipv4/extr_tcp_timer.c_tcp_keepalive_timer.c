
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_list {int dummy; } ;
struct tcp_sock {scalar_t__ linger2; scalar_t__ packets_out; } ;
struct sock {int sk_state; } ;
struct inet_connection_sock {scalar_t__ icsk_user_timeout; scalar_t__ icsk_probes_out; } ;


 int GFP_ATOMIC ;
 int HZ ;
 int LINUX_MIB_TCPKEEPALIVE ;
 int SOCK_DEAD ;
 int SOCK_KEEPOPEN ;
 int TCPF_CLOSE ;
 int TCPF_SYN_SENT ;
 int TCP_FIN_WAIT2 ;
 int TCP_LISTEN ;
 int TCP_RESOURCE_PROBE_INTERVAL ;
 int TCP_TIMEWAIT_LEN ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct sock* from_timer (int ,struct timer_list*,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_reset_keepalive_timer (struct sock*,int) ;
 int keepalive_intvl_when (struct tcp_sock*) ;
 scalar_t__ keepalive_probes (struct tcp_sock*) ;
 int keepalive_time_elapsed (struct tcp_sock*) ;
 int keepalive_time_when (struct tcp_sock*) ;
 int msecs_to_jiffies (scalar_t__) ;
 int pr_err (char*) ;
 struct sock* sk ;
 int sk_mem_reclaim (struct sock*) ;
 int sk_timer ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int tcp_done (struct sock*) ;
 int tcp_fin_time (struct sock*) ;
 int tcp_mstamp_refresh (struct tcp_sock*) ;
 int tcp_send_active_reset (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_time_wait (struct sock*,int,int const) ;
 int tcp_write_err (struct sock*) ;
 int tcp_write_queue_empty (struct sock*) ;
 scalar_t__ tcp_write_wakeup (struct sock*,int ) ;

__attribute__((used)) static void tcp_keepalive_timer (struct timer_list *t)
{
 struct sock *sk = from_timer(sk, t, sk_timer);
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 u32 elapsed;


 bh_lock_sock(sk);
 if (sock_owned_by_user(sk)) {

  inet_csk_reset_keepalive_timer (sk, HZ/20);
  goto out;
 }

 if (sk->sk_state == TCP_LISTEN) {
  pr_err("Hmm... keepalive on a LISTEN ???\n");
  goto out;
 }

 tcp_mstamp_refresh(tp);
 if (sk->sk_state == TCP_FIN_WAIT2 && sock_flag(sk, SOCK_DEAD)) {
  if (tp->linger2 >= 0) {
   const int tmo = tcp_fin_time(sk) - TCP_TIMEWAIT_LEN;

   if (tmo > 0) {
    tcp_time_wait(sk, TCP_FIN_WAIT2, tmo);
    goto out;
   }
  }
  tcp_send_active_reset(sk, GFP_ATOMIC);
  goto death;
 }

 if (!sock_flag(sk, SOCK_KEEPOPEN) ||
     ((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_SYN_SENT)))
  goto out;

 elapsed = keepalive_time_when(tp);


 if (tp->packets_out || !tcp_write_queue_empty(sk))
  goto resched;

 elapsed = keepalive_time_elapsed(tp);

 if (elapsed >= keepalive_time_when(tp)) {



  if ((icsk->icsk_user_timeout != 0 &&
      elapsed >= msecs_to_jiffies(icsk->icsk_user_timeout) &&
      icsk->icsk_probes_out > 0) ||
      (icsk->icsk_user_timeout == 0 &&
      icsk->icsk_probes_out >= keepalive_probes(tp))) {
   tcp_send_active_reset(sk, GFP_ATOMIC);
   tcp_write_err(sk);
   goto out;
  }
  if (tcp_write_wakeup(sk, LINUX_MIB_TCPKEEPALIVE) <= 0) {
   icsk->icsk_probes_out++;
   elapsed = keepalive_intvl_when(tp);
  } else {



   elapsed = TCP_RESOURCE_PROBE_INTERVAL;
  }
 } else {

  elapsed = keepalive_time_when(tp) - elapsed;
 }

 sk_mem_reclaim(sk);

resched:
 inet_csk_reset_keepalive_timer (sk, elapsed);
 goto out;

death:
 tcp_done(sk);

out:
 bh_unlock_sock(sk);
 sock_put(sk);
}
