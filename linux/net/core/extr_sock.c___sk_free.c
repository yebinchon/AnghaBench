
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_net_refcnt; } ;


 scalar_t__ likely (scalar_t__) ;
 int sk_destruct (struct sock*) ;
 int sock_diag_broadcast_destroy (struct sock*) ;
 scalar_t__ sock_diag_has_destroy_listeners (struct sock*) ;
 int sock_inuse_add (int ,int) ;
 int sock_net (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __sk_free(struct sock *sk)
{
 if (likely(sk->sk_net_refcnt))
  sock_inuse_add(sock_net(sk), -1);

 if (unlikely(sk->sk_net_refcnt && sock_diag_has_destroy_listeners(sk)))
  sock_diag_broadcast_destroy(sk);
 else
  sk_destruct(sk);
}
