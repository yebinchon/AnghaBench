
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_wmem_alloc; int sk_rmem_alloc; int sk_receive_queue; } ;
struct netns_pfkey {int socks_nr; } ;
struct net {int dummy; } ;


 int SOCK_DEAD ;
 int WARN_ON (int ) ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 struct netns_pfkey* net_generic (struct net*,int ) ;
 int pfkey_net_id ;
 int pfkey_sk (struct sock*) ;
 int pfkey_terminate_dump (int ) ;
 int pr_err (char*,struct sock*) ;
 int refcount_read (int *) ;
 int skb_queue_purge (int *) ;
 int sock_flag (struct sock*,int ) ;
 struct net* sock_net (struct sock*) ;

__attribute__((used)) static void pfkey_sock_destruct(struct sock *sk)
{
 struct net *net = sock_net(sk);
 struct netns_pfkey *net_pfkey = net_generic(net, pfkey_net_id);

 pfkey_terminate_dump(pfkey_sk(sk));
 skb_queue_purge(&sk->sk_receive_queue);

 if (!sock_flag(sk, SOCK_DEAD)) {
  pr_err("Attempt to release alive pfkey socket: %p\n", sk);
  return;
 }

 WARN_ON(atomic_read(&sk->sk_rmem_alloc));
 WARN_ON(refcount_read(&sk->sk_wmem_alloc));

 atomic_dec(&net_pfkey->socks_nr);
}
