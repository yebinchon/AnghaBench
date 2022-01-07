
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int close_work_scheduled; int close_work; int peer_shutdown; } ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_state; } ;


 int SHUTDOWN_MASK ;
 int SOCK_DONE ;
 int TCP_CLOSING ;
 scalar_t__ cancel_delayed_work (int *) ;
 struct sock* sk_vsock (struct vsock_sock*) ;
 int sock_put (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int vsock_remove_sock (struct vsock_sock*) ;
 scalar_t__ vsock_stream_has_data (struct vsock_sock*) ;

__attribute__((used)) static void hvs_do_close_lock_held(struct vsock_sock *vsk,
       bool cancel_timeout)
{
 struct sock *sk = sk_vsock(vsk);

 sock_set_flag(sk, SOCK_DONE);
 vsk->peer_shutdown = SHUTDOWN_MASK;
 if (vsock_stream_has_data(vsk) <= 0)
  sk->sk_state = TCP_CLOSING;
 sk->sk_state_change(sk);
 if (vsk->close_work_scheduled &&
     (!cancel_timeout || cancel_delayed_work(&vsk->close_work))) {
  vsk->close_work_scheduled = 0;
  vsock_remove_sock(vsk);


  sock_put(sk);
 }
}
