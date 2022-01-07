
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sock {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int * sk; } ;


 int init_net ;
 int net_eq (struct net*,int *) ;
 TYPE_1__ pnres ;
 struct sock* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sock_hold (struct sock*) ;

struct sock *pn_find_sock_by_res(struct net *net, u8 res)
{
 struct sock *sk;

 if (!net_eq(net, &init_net))
  return ((void*)0);

 rcu_read_lock();
 sk = rcu_dereference(pnres.sk[res]);
 if (sk)
  sock_hold(sk);
 rcu_read_unlock();
 return sk;
}
