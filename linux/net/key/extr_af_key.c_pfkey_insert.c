
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct netns_pfkey {int table; } ;
struct net {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct netns_pfkey* net_generic (struct net*,int ) ;
 int pfkey_mutex ;
 int pfkey_net_id ;
 int sk_add_node_rcu (struct sock*,int *) ;
 struct net* sock_net (struct sock*) ;

__attribute__((used)) static void pfkey_insert(struct sock *sk)
{
 struct net *net = sock_net(sk);
 struct netns_pfkey *net_pfkey = net_generic(net, pfkey_net_id);

 mutex_lock(&pfkey_mutex);
 sk_add_node_rcu(sk, &net_pfkey->table);
 mutex_unlock(&pfkey_mutex);
}
