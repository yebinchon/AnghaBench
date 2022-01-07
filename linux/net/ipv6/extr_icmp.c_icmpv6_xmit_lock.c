
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slock; } ;
struct sock {TYPE_1__ sk_lock; } ;
struct net {int dummy; } ;


 struct sock* icmpv6_sk (struct net*) ;
 int spin_trylock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static __inline__ struct sock *icmpv6_xmit_lock(struct net *net)
{
 struct sock *sk;

 sk = icmpv6_sk(net);
 if (unlikely(!spin_trylock(&sk->sk_lock.slock))) {




  return ((void*)0);
 }
 return sk;
}
