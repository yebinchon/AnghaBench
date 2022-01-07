
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; int sk_userlocks; int (* sk_error_report ) (struct sock*) ;scalar_t__ sk_shutdown; int * sk_send_head; int sk_write_queue; int sk_receive_queue; void* sk_err; } ;
struct inet_sock {scalar_t__ inet_num; scalar_t__ inet_dport; } ;
struct inet_connection_sock {int icsk_bind_hash; scalar_t__ icsk_backoff; } ;
struct dccp_sock {int * dccps_hc_rx_ccid; } ;


 int const DCCP_CLOSED ;
 int const DCCP_LISTEN ;
 int const DCCP_REQUESTING ;
 int DCCP_RESET_CODE_ABORTED ;
 void* ECONNRESET ;
 int SOCK_BINDADDR_LOCK ;
 int SOCK_DONE ;
 int WARN_ON (int) ;
 int __kfree_skb (int *) ;
 int __sk_dst_reset (struct sock*) ;
 int __skb_queue_purge (int *) ;
 int ccid_hc_rx_delete (int *,struct sock*) ;
 int dccp_clear_xmit_timers (struct sock*) ;
 scalar_t__ dccp_need_reset (int const) ;
 int dccp_send_reset (struct sock*,int ) ;
 int dccp_set_state (struct sock*,int const) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_delack_init (struct sock*) ;
 int inet_csk_listen_stop (struct sock*) ;
 int inet_reset_saddr (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

int dccp_disconnect(struct sock *sk, int flags)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct inet_sock *inet = inet_sk(sk);
 struct dccp_sock *dp = dccp_sk(sk);
 const int old_state = sk->sk_state;

 if (old_state != DCCP_CLOSED)
  dccp_set_state(sk, DCCP_CLOSED);





 if (old_state == DCCP_LISTEN) {
  inet_csk_listen_stop(sk);
 } else if (dccp_need_reset(old_state)) {
  dccp_send_reset(sk, DCCP_RESET_CODE_ABORTED);
  sk->sk_err = ECONNRESET;
 } else if (old_state == DCCP_REQUESTING)
  sk->sk_err = ECONNRESET;

 dccp_clear_xmit_timers(sk);
 ccid_hc_rx_delete(dp->dccps_hc_rx_ccid, sk);
 dp->dccps_hc_rx_ccid = ((void*)0);

 __skb_queue_purge(&sk->sk_receive_queue);
 __skb_queue_purge(&sk->sk_write_queue);
 if (sk->sk_send_head != ((void*)0)) {
  __kfree_skb(sk->sk_send_head);
  sk->sk_send_head = ((void*)0);
 }

 inet->inet_dport = 0;

 if (!(sk->sk_userlocks & SOCK_BINDADDR_LOCK))
  inet_reset_saddr(sk);

 sk->sk_shutdown = 0;
 sock_reset_flag(sk, SOCK_DONE);

 icsk->icsk_backoff = 0;
 inet_csk_delack_init(sk);
 __sk_dst_reset(sk);

 WARN_ON(inet->inet_num && !icsk->icsk_bind_hash);

 sk->sk_error_report(sk);
 return 0;
}
