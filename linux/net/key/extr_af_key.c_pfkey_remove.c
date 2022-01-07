
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pfkey_mutex ;
 int sk_del_node_init_rcu (struct sock*) ;

__attribute__((used)) static void pfkey_remove(struct sock *sk)
{
 mutex_lock(&pfkey_mutex);
 sk_del_node_init_rcu(sk);
 mutex_unlock(&pfkey_mutex);
}
