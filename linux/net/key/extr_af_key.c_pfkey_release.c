
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_write_queue; } ;


 int pfkey_remove (struct sock*) ;
 int skb_queue_purge (int *) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 int synchronize_rcu () ;

__attribute__((used)) static int pfkey_release(struct socket *sock)
{
 struct sock *sk = sock->sk;

 if (!sk)
  return 0;

 pfkey_remove(sk);

 sock_orphan(sk);
 sock->sk = ((void*)0);
 skb_queue_purge(&sk->sk_write_queue);

 synchronize_rcu();
 sock_put(sk);

 return 0;
}
