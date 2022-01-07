
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int close_work_scheduled; int close_work; int trans; } ;
struct sock {scalar_t__ sk_state; int sk_shutdown; } ;


 int HVS_CLOSE_TIMEOUT ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int SHUTDOWN_MASK ;
 int SOCK_DONE ;
 scalar_t__ TCP_CLOSING ;
 scalar_t__ TCP_ESTABLISHED ;
 int hvs_close_timeout ;
 int hvs_shutdown_lock_held (int ,int) ;
 int schedule_delayed_work (int *,int ) ;
 struct sock* sk_vsock (struct vsock_sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_hold (struct sock*) ;

__attribute__((used)) static bool hvs_close_lock_held(struct vsock_sock *vsk)
{
 struct sock *sk = sk_vsock(vsk);

 if (!(sk->sk_state == TCP_ESTABLISHED ||
       sk->sk_state == TCP_CLOSING))
  return 1;

 if ((sk->sk_shutdown & SHUTDOWN_MASK) != SHUTDOWN_MASK)
  hvs_shutdown_lock_held(vsk->trans, SHUTDOWN_MASK);

 if (sock_flag(sk, SOCK_DONE))
  return 1;


 sock_hold(sk);
 INIT_DELAYED_WORK(&vsk->close_work, hvs_close_timeout);
 vsk->close_work_scheduled = 1;
 schedule_delayed_work(&vsk->close_work, HVS_CLOSE_TIMEOUT);
 return 0;
}
