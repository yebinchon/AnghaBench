
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pn_sock_unbind_all_res (struct sock*) ;
 TYPE_1__ pnsocks ;
 int sk_del_node_init_rcu (struct sock*) ;
 int synchronize_rcu () ;

void pn_sock_unhash(struct sock *sk)
{
 mutex_lock(&pnsocks.lock);
 sk_del_node_init_rcu(sk);
 mutex_unlock(&pnsocks.lock);
 pn_sock_unbind_all_res(sk);
 synchronize_rcu();
}
