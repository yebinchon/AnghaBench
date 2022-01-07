
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_v6_daddr; } ;
struct ipv6_pinfo {int saddr; } ;
struct flowi6 {int saddr; int daddr; } ;
struct dst_entry {int dummy; } ;


 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int ip6_dst_store (struct sock*,struct dst_entry*,int *,int *) ;
 scalar_t__ ipv6_addr_equal (int *,int *) ;

void ip6_sk_dst_store_flow(struct sock *sk, struct dst_entry *dst,
      const struct flowi6 *fl6)
{




 ip6_dst_store(sk, dst,
        ipv6_addr_equal(&fl6->daddr, &sk->sk_v6_daddr) ?
        &sk->sk_v6_daddr : ((void*)0),




        ((void*)0));
}
