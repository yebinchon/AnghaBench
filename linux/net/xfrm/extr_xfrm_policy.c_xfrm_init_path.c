
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int rt6i_nfheader_len; } ;
struct TYPE_6__ {TYPE_2__ rt6; } ;
struct xfrm_dst {TYPE_3__ u; int path_cookie; } ;
struct rt6_info {int dummy; } ;
struct dst_entry {TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ family; } ;


 scalar_t__ AF_INET6 ;
 int rt6_get_cookie (struct rt6_info*) ;

__attribute__((used)) static void xfrm_init_path(struct xfrm_dst *path, struct dst_entry *dst,
      int nfheader_len)
{
 if (dst->ops->family == AF_INET6) {
  struct rt6_info *rt = (struct rt6_info *)dst;
  path->path_cookie = rt6_get_cookie(rt);
  path->u.rt6.rt6i_nfheader_len = nfheader_len;
 }
}
