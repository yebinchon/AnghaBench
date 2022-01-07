
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int trans; } ;
struct sock {int dummy; } ;


 int SEND_SHUTDOWN ;
 int hvs_shutdown_lock_held (int ,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 struct sock* sk_vsock (struct vsock_sock*) ;

__attribute__((used)) static int hvs_shutdown(struct vsock_sock *vsk, int mode)
{
 struct sock *sk = sk_vsock(vsk);

 if (!(mode & SEND_SHUTDOWN))
  return 0;

 lock_sock(sk);
 hvs_shutdown_lock_held(vsk->trans, mode);
 release_sock(sk);
 return 0;
}
