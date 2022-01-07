
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rt6i_uncached_list; int rt6i_idev; } ;
struct TYPE_3__ {TYPE_2__ rt6; } ;
struct xfrm_dst {TYPE_1__ u; } ;
struct dst_entry {int dummy; } ;


 int dst_destroy_metrics_generic (struct dst_entry*) ;
 int in6_dev_put (int ) ;
 scalar_t__ likely (int ) ;
 int rt6_uncached_list_del (TYPE_2__*) ;
 int xfrm_dst_destroy (struct xfrm_dst*) ;

__attribute__((used)) static void xfrm6_dst_destroy(struct dst_entry *dst)
{
 struct xfrm_dst *xdst = (struct xfrm_dst *)dst;

 if (likely(xdst->u.rt6.rt6i_idev))
  in6_dev_put(xdst->u.rt6.rt6i_idev);
 dst_destroy_metrics_generic(dst);
 if (xdst->u.rt6.rt6i_uncached_list)
  rt6_uncached_list_del(&xdst->u.rt6);
 xfrm_dst_destroy(xdst);
}
