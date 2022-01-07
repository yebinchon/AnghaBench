
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;


 struct dst_entry* xfrm_lookup_with_ifid (struct net*,struct dst_entry*,struct flowi const*,struct sock const*,int,int ) ;

struct dst_entry *xfrm_lookup(struct net *net, struct dst_entry *dst_orig,
         const struct flowi *fl, const struct sock *sk,
         int flags)
{
 return xfrm_lookup_with_ifid(net, dst_orig, fl, sk, flags, 0);
}
