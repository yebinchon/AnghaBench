
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ linger2; int fastopen_rsk; int repair; } ;
struct sock {int sk_state; TYPE_1__* sk_prot; int sk_lingertime; int sk_allocation; int sk_receive_queue; int sk_shutdown; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct TYPE_4__ {int tcp_flags; scalar_t__ seq; scalar_t__ end_seq; } ;
struct TYPE_3__ {int orphan_count; int (* disconnect ) (struct sock*,int ) ;} ;


 int GFP_ATOMIC ;
 int LINUX_MIB_TCPABORTONCLOSE ;
 int LINUX_MIB_TCPABORTONDATA ;
 int LINUX_MIB_TCPABORTONLINGER ;
 int LINUX_MIB_TCPABORTONMEMORY ;
 int NET_INC_STATS (int ,int ) ;
 int SHUTDOWN_MASK ;
 int SOCK_LINGER ;
 int TCPHDR_FIN ;
 int TCP_CLOSE ;
 int TCP_FIN_WAIT2 ;
 int TCP_LISTEN ;
 TYPE_2__* TCP_SKB_CB (struct sk_buff*) ;
 int const TCP_TIMEWAIT_LEN ;
 int __NET_INC_STATS (int ,int ) ;
 int __kfree_skb (struct sk_buff*) ;
 int __release_sock (struct sock*) ;
 struct sk_buff* __skb_dequeue (int *) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int check_net (int ) ;
 int inet_csk_destroy_sock (struct sock*) ;
 int inet_csk_listen_stop (struct sock*) ;
 int inet_csk_reset_keepalive_timer (struct sock*,int const) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int lock_sock (struct sock*) ;
 int lockdep_sock_is_held (struct sock*) ;
 int percpu_counter_inc (int ) ;
 struct request_sock* rcu_dereference_protected (int ,int ) ;
 int release_sock (struct sock*) ;
 int reqsk_fastopen_remove (struct sock*,struct request_sock*,int) ;
 int sk_mem_reclaim (struct sock*) ;
 int sk_stream_wait_close (struct sock*,long) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_hold (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*,int ) ;
 int stub2 (struct sock*,int ) ;
 scalar_t__ tcp_check_oom (struct sock*,int ) ;
 scalar_t__ tcp_close_state (struct sock*) ;
 int tcp_fin_time (struct sock*) ;
 int tcp_send_active_reset (struct sock*,int ) ;
 int tcp_send_fin (struct sock*) ;
 int tcp_set_state (struct sock*,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_time_wait (struct sock*,int,int const) ;
 scalar_t__ unlikely (int ) ;

void tcp_close(struct sock *sk, long timeout)
{
 struct sk_buff *skb;
 int data_was_unread = 0;
 int state;

 lock_sock(sk);
 sk->sk_shutdown = SHUTDOWN_MASK;

 if (sk->sk_state == TCP_LISTEN) {
  tcp_set_state(sk, TCP_CLOSE);


  inet_csk_listen_stop(sk);

  goto adjudge_to_death;
 }





 while ((skb = __skb_dequeue(&sk->sk_receive_queue)) != ((void*)0)) {
  u32 len = TCP_SKB_CB(skb)->end_seq - TCP_SKB_CB(skb)->seq;

  if (TCP_SKB_CB(skb)->tcp_flags & TCPHDR_FIN)
   len--;
  data_was_unread += len;
  __kfree_skb(skb);
 }

 sk_mem_reclaim(sk);


 if (sk->sk_state == TCP_CLOSE)
  goto adjudge_to_death;
 if (unlikely(tcp_sk(sk)->repair)) {
  sk->sk_prot->disconnect(sk, 0);
 } else if (data_was_unread) {

  NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPABORTONCLOSE);
  tcp_set_state(sk, TCP_CLOSE);
  tcp_send_active_reset(sk, sk->sk_allocation);
 } else if (sock_flag(sk, SOCK_LINGER) && !sk->sk_lingertime) {

  sk->sk_prot->disconnect(sk, 0);
  NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPABORTONDATA);
 } else if (tcp_close_state(sk)) {
  tcp_send_fin(sk);
 }

 sk_stream_wait_close(sk, timeout);

adjudge_to_death:
 state = sk->sk_state;
 sock_hold(sk);
 sock_orphan(sk);

 local_bh_disable();
 bh_lock_sock(sk);

 __release_sock(sk);

 percpu_counter_inc(sk->sk_prot->orphan_count);


 if (state != TCP_CLOSE && sk->sk_state == TCP_CLOSE)
  goto out;
 if (sk->sk_state == TCP_FIN_WAIT2) {
  struct tcp_sock *tp = tcp_sk(sk);
  if (tp->linger2 < 0) {
   tcp_set_state(sk, TCP_CLOSE);
   tcp_send_active_reset(sk, GFP_ATOMIC);
   __NET_INC_STATS(sock_net(sk),
     LINUX_MIB_TCPABORTONLINGER);
  } else {
   const int tmo = tcp_fin_time(sk);

   if (tmo > TCP_TIMEWAIT_LEN) {
    inet_csk_reset_keepalive_timer(sk,
      tmo - TCP_TIMEWAIT_LEN);
   } else {
    tcp_time_wait(sk, TCP_FIN_WAIT2, tmo);
    goto out;
   }
  }
 }
 if (sk->sk_state != TCP_CLOSE) {
  sk_mem_reclaim(sk);
  if (tcp_check_oom(sk, 0)) {
   tcp_set_state(sk, TCP_CLOSE);
   tcp_send_active_reset(sk, GFP_ATOMIC);
   __NET_INC_STATS(sock_net(sk),
     LINUX_MIB_TCPABORTONMEMORY);
  } else if (!check_net(sock_net(sk))) {

   tcp_set_state(sk, TCP_CLOSE);
  }
 }

 if (sk->sk_state == TCP_CLOSE) {
  struct request_sock *req;

  req = rcu_dereference_protected(tcp_sk(sk)->fastopen_rsk,
      lockdep_sock_is_held(sk));




  if (req)
   reqsk_fastopen_remove(sk, req, 0);
  inet_csk_destroy_sock(sk);
 }


out:
 bh_unlock_sock(sk);
 local_bh_enable();
 release_sock(sk);
 sock_put(sk);
}
