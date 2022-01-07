
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct neighbour {int dummy; } ;
struct dst_entry {TYPE_1__* ops; } ;
struct TYPE_2__ {struct neighbour* (* neigh_lookup ) (struct dst_entry const*,struct sk_buff*,void const*) ;} ;


 struct neighbour* stub1 (struct dst_entry const*,struct sk_buff*,void const*) ;
 struct dst_entry* xfrm_dst_path (struct dst_entry const*) ;
 void* xfrm_get_dst_nexthop (struct dst_entry const*,void const*) ;

__attribute__((used)) static struct neighbour *xfrm_neigh_lookup(const struct dst_entry *dst,
        struct sk_buff *skb,
        const void *daddr)
{
 const struct dst_entry *path = xfrm_dst_path(dst);

 if (!skb)
  daddr = xfrm_get_dst_nexthop(dst, daddr);
 return path->ops->neigh_lookup(path, skb, daddr);
}
