
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int sk_err; int (* sk_error_report ) (struct sock*) ;} ;
struct request_sock {int rsk_listener; } ;


 int EOPNOTSUPP ;
 int GFP_ATOMIC ;
 int SOCK_DEAD ;
 int TCP_CLOSE ;
 scalar_t__ TCP_LISTEN ;
 scalar_t__ TCP_NEW_SYN_RECV ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int inet_csk_listen_stop (struct sock*) ;
 int inet_csk_reqsk_queue_drop (int ,struct request_sock*) ;
 struct request_sock* inet_reqsk (struct sock*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sk_fullsock (struct sock*) ;
 int smp_wmb () ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int tcp_done (struct sock*) ;
 scalar_t__ tcp_need_reset (scalar_t__) ;
 int tcp_send_active_reset (struct sock*,int ) ;
 int tcp_set_state (struct sock*,int ) ;
 int tcp_write_queue_purge (struct sock*) ;

int tcp_abort(struct sock *sk, int err)
{
 if (!sk_fullsock(sk)) {
  if (sk->sk_state == TCP_NEW_SYN_RECV) {
   struct request_sock *req = inet_reqsk(sk);

   local_bh_disable();
   inet_csk_reqsk_queue_drop(req->rsk_listener, req);
   local_bh_enable();
   return 0;
  }
  return -EOPNOTSUPP;
 }


 lock_sock(sk);

 if (sk->sk_state == TCP_LISTEN) {
  tcp_set_state(sk, TCP_CLOSE);
  inet_csk_listen_stop(sk);
 }


 local_bh_disable();
 bh_lock_sock(sk);

 if (!sock_flag(sk, SOCK_DEAD)) {
  sk->sk_err = err;

  smp_wmb();
  sk->sk_error_report(sk);
  if (tcp_need_reset(sk->sk_state))
   tcp_send_active_reset(sk, GFP_ATOMIC);
  tcp_done(sk);
 }

 bh_unlock_sock(sk);
 local_bh_enable();
 tcp_write_queue_purge(sk);
 release_sock(sk);
 return 0;
}
