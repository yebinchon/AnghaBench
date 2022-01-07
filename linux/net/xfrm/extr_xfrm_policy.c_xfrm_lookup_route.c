
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {TYPE_1__* ops; } ;
struct TYPE_2__ {int family; } ;


 int EREMOTE ;
 scalar_t__ IS_ERR (struct dst_entry*) ;
 int PTR_ERR (struct dst_entry*) ;
 int XFRM_LOOKUP_KEEP_DST_REF ;
 int XFRM_LOOKUP_QUEUE ;
 int dst_release (struct dst_entry*) ;
 struct dst_entry* make_blackhole (struct net*,int ,struct dst_entry*) ;
 struct dst_entry* xfrm_lookup (struct net*,struct dst_entry*,struct flowi const*,struct sock const*,int) ;

struct dst_entry *xfrm_lookup_route(struct net *net, struct dst_entry *dst_orig,
        const struct flowi *fl,
        const struct sock *sk, int flags)
{
 struct dst_entry *dst = xfrm_lookup(net, dst_orig, fl, sk,
         flags | XFRM_LOOKUP_QUEUE |
         XFRM_LOOKUP_KEEP_DST_REF);

 if (IS_ERR(dst) && PTR_ERR(dst) == -EREMOTE)
  return make_blackhole(net, dst_orig->ops->family, dst_orig);

 if (IS_ERR(dst))
  dst_release(dst_orig);

 return dst;
}
