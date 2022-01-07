
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_entry {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* confirm_neigh ) (struct dst_entry const*,void const*) ;} ;


 int stub1 (struct dst_entry const*,void const*) ;
 struct dst_entry* xfrm_dst_path (struct dst_entry const*) ;
 void* xfrm_get_dst_nexthop (struct dst_entry const*,void const*) ;

__attribute__((used)) static void xfrm_confirm_neigh(const struct dst_entry *dst, const void *daddr)
{
 const struct dst_entry *path = xfrm_dst_path(dst);

 daddr = xfrm_get_dst_nexthop(dst, daddr);
 path->ops->confirm_neigh(path, daddr);
}
