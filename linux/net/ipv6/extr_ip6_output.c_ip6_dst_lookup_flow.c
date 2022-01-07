
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {struct in6_addr daddr; } ;
struct dst_entry {int dummy; } ;


 struct dst_entry* ERR_PTR (int) ;
 int flowi6_to_flowi (struct flowi6*) ;
 int ip6_dst_lookup_tail (int ,struct sock const*,struct dst_entry**,struct flowi6*) ;
 int sock_net (struct sock const*) ;
 struct dst_entry* xfrm_lookup_route (int ,struct dst_entry*,int ,struct sock const*,int ) ;

struct dst_entry *ip6_dst_lookup_flow(const struct sock *sk, struct flowi6 *fl6,
          const struct in6_addr *final_dst)
{
 struct dst_entry *dst = ((void*)0);
 int err;

 err = ip6_dst_lookup_tail(sock_net(sk), sk, &dst, fl6);
 if (err)
  return ERR_PTR(err);
 if (final_dst)
  fl6->daddr = *final_dst;

 return xfrm_lookup_route(sock_net(sk), dst, flowi6_to_flowi(fl6), sk, 0);
}
