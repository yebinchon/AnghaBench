
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_v6_daddr; } ;
struct dst_entry {TYPE_1__* ops; int obsolete; } ;
struct TYPE_4__ {int dst_cookie; } ;
struct TYPE_3__ {scalar_t__ (* check ) (struct dst_entry*,int ) ;} ;


 struct dst_entry* __sk_dst_get (struct sock*) ;
 TYPE_2__* inet6_sk (struct sock*) ;
 int ip6_datagram_dst_update (struct sock*,int) ;
 scalar_t__ ipv6_addr_v4mapped (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ stub1 (struct dst_entry*,int ) ;

void ip6_datagram_release_cb(struct sock *sk)
{
 struct dst_entry *dst;

 if (ipv6_addr_v4mapped(&sk->sk_v6_daddr))
  return;

 rcu_read_lock();
 dst = __sk_dst_get(sk);
 if (!dst || !dst->obsolete ||
     dst->ops->check(dst, inet6_sk(sk)->dst_cookie)) {
  rcu_read_unlock();
  return;
 }
 rcu_read_unlock();

 ip6_datagram_dst_update(sk, 0);
}
