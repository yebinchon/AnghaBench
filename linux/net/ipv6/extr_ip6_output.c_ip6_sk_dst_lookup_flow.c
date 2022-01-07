
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int dst_cookie; } ;


 int IS_ERR (struct dst_entry*) ;
 int dst_clone (struct dst_entry*) ;
 TYPE_1__* inet6_sk (struct sock*) ;
 struct dst_entry* ip6_dst_lookup_flow (struct sock*,struct flowi6*,struct in6_addr const*) ;
 struct dst_entry* ip6_sk_dst_check (struct sock*,struct dst_entry*,struct flowi6*) ;
 int ip6_sk_dst_store_flow (struct sock*,int ,struct flowi6*) ;
 struct dst_entry* sk_dst_check (struct sock*,int ) ;

struct dst_entry *ip6_sk_dst_lookup_flow(struct sock *sk, struct flowi6 *fl6,
      const struct in6_addr *final_dst,
      bool connected)
{
 struct dst_entry *dst = sk_dst_check(sk, inet6_sk(sk)->dst_cookie);

 dst = ip6_sk_dst_check(sk, dst, fl6);
 if (dst)
  return dst;

 dst = ip6_dst_lookup_flow(sk, fl6, final_dst);
 if (connected && !IS_ERR(dst))
  ip6_sk_dst_store_flow(sk, dst_clone(dst), fl6);

 return dst;
}
