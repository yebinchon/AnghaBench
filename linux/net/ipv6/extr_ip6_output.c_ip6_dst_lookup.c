
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net {int dummy; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {int dummy; } ;


 int ip6_dst_lookup_tail (struct net*,struct sock*,struct dst_entry**,struct flowi6*) ;

int ip6_dst_lookup(struct net *net, struct sock *sk, struct dst_entry **dst,
     struct flowi6 *fl6)
{
 *dst = ((void*)0);
 return ip6_dst_lookup_tail(net, sk, dst, fl6);
}
