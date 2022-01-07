
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_dst_cache; } ;
struct dst_entry {TYPE_1__* dev; } ;
struct TYPE_2__ {int features; } ;


 int NETIF_F_LOOPBACK ;
 struct dst_entry* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline int sock_is_loopback(struct sock *sk)
{
 struct dst_entry *dst;
 int loopback = 0;
 rcu_read_lock();
 dst = rcu_dereference(sk->sk_dst_cache);
 if (dst && dst->dev &&
     (dst->dev->features & NETIF_F_LOOPBACK))
  loopback = 1;
 rcu_read_unlock();
 return loopback;
}
