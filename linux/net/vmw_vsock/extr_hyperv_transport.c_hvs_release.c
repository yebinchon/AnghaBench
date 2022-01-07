
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;
struct sock {int dummy; } ;


 int SINGLE_DEPTH_NESTING ;
 int hvs_close_lock_held (struct vsock_sock*) ;
 int lock_sock_nested (struct sock*,int ) ;
 int release_sock (struct sock*) ;
 struct sock* sk_vsock (struct vsock_sock*) ;
 int vsock_remove_sock (struct vsock_sock*) ;

__attribute__((used)) static void hvs_release(struct vsock_sock *vsk)
{
 struct sock *sk = sk_vsock(vsk);
 bool remove_sock;

 lock_sock_nested(sk, SINGLE_DEPTH_NESTING);
 remove_sock = hvs_close_lock_held(vsk);
 release_sock(sk);
 if (remove_sock)
  vsock_remove_sock(vsk);
}
