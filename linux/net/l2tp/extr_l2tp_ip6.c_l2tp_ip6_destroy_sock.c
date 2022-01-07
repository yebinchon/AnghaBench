
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct l2tp_tunnel* sk_user_data; } ;
struct l2tp_tunnel {int dummy; } ;


 int inet6_destroy_sock (struct sock*) ;
 int ip6_flush_pending_frames (struct sock*) ;
 int l2tp_tunnel_delete (struct l2tp_tunnel*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static void l2tp_ip6_destroy_sock(struct sock *sk)
{
 struct l2tp_tunnel *tunnel = sk->sk_user_data;

 lock_sock(sk);
 ip6_flush_pending_frames(sk);
 release_sock(sk);

 if (tunnel)
  l2tp_tunnel_delete(tunnel);

 inet6_destroy_sock(sk);
}
