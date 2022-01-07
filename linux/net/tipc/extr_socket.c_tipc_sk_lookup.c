
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_sock {int sk; } ;
struct tipc_net {int sk_rht; } ;
struct net {int dummy; } ;


 struct tipc_net* net_generic (struct net*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct tipc_sock* rhashtable_lookup_fast (int *,int *,int ) ;
 int sock_hold (int *) ;
 int tipc_net_id ;
 int tsk_rht_params ;

__attribute__((used)) static struct tipc_sock *tipc_sk_lookup(struct net *net, u32 portid)
{
 struct tipc_net *tn = net_generic(net, tipc_net_id);
 struct tipc_sock *tsk;

 rcu_read_lock();
 tsk = rhashtable_lookup_fast(&tn->sk_rht, &portid, tsk_rht_params);
 if (tsk)
  sock_hold(&tsk->sk);
 rcu_read_unlock();

 return tsk;
}
