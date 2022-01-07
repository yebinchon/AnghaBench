
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; int sk_shutdown; int sk_lingertime; } ;
struct vsock_sock {int peer_shutdown; int close_work_scheduled; int close_work; struct sock sk; } ;
struct TYPE_2__ {int flags; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int PF_EXITING ;
 int SHUTDOWN_MASK ;
 int SOCK_DONE ;
 int SOCK_LINGER ;
 scalar_t__ TCP_CLOSING ;
 scalar_t__ TCP_ESTABLISHED ;
 int VSOCK_CLOSE_TIMEOUT ;
 TYPE_1__* current ;
 int schedule_delayed_work (int *,int ) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_hold (struct sock*) ;
 int virtio_transport_close_timeout ;
 int virtio_transport_reset (struct vsock_sock*,int *) ;
 int virtio_transport_shutdown (struct vsock_sock*,int) ;
 int virtio_transport_wait_close (struct sock*,int ) ;

__attribute__((used)) static bool virtio_transport_close(struct vsock_sock *vsk)
{
 struct sock *sk = &vsk->sk;

 if (!(sk->sk_state == TCP_ESTABLISHED ||
       sk->sk_state == TCP_CLOSING))
  return 1;


 if ((vsk->peer_shutdown & SHUTDOWN_MASK) == SHUTDOWN_MASK) {
  (void)virtio_transport_reset(vsk, ((void*)0));
  return 1;
 }

 if ((sk->sk_shutdown & SHUTDOWN_MASK) != SHUTDOWN_MASK)
  (void)virtio_transport_shutdown(vsk, SHUTDOWN_MASK);

 if (sock_flag(sk, SOCK_LINGER) && !(current->flags & PF_EXITING))
  virtio_transport_wait_close(sk, sk->sk_lingertime);

 if (sock_flag(sk, SOCK_DONE)) {
  return 1;
 }

 sock_hold(sk);
 INIT_DELAYED_WORK(&vsk->close_work,
     virtio_transport_close_timeout);
 vsk->close_work_scheduled = 1;
 schedule_delayed_work(&vsk->close_work, VSOCK_CLOSE_TIMEOUT);
 return 0;
}
