
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rt_uncached_list; } ;
struct TYPE_3__ {TYPE_2__ rt; } ;
struct xfrm_dst {TYPE_1__ u; } ;
struct dst_entry {int dummy; } ;


 int dst_destroy_metrics_generic (struct dst_entry*) ;
 int rt_del_uncached_list (TYPE_2__*) ;
 int xfrm_dst_destroy (struct xfrm_dst*) ;

__attribute__((used)) static void xfrm4_dst_destroy(struct dst_entry *dst)
{
 struct xfrm_dst *xdst = (struct xfrm_dst *)dst;

 dst_destroy_metrics_generic(dst);
 if (xdst->u.rt.rt_uncached_list)
  rt_del_uncached_list(&xdst->u.rt);
 xfrm_dst_destroy(xdst);
}
