
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct rtable {int rt_flags; TYPE_1__ dst; } ;
struct dst_entry {scalar_t__ obsolete; } ;


 int RTCF_REDIRECTED ;
 int ip_rt_put (struct rtable*) ;

__attribute__((used)) static struct dst_entry *ipv4_negative_advice(struct dst_entry *dst)
{
 struct rtable *rt = (struct rtable *)dst;
 struct dst_entry *ret = dst;

 if (rt) {
  if (dst->obsolete > 0) {
   ip_rt_put(rt);
   ret = ((void*)0);
  } else if ((rt->rt_flags & RTCF_REDIRECTED) ||
      rt->dst.expires) {
   ip_rt_put(rt);
   ret = ((void*)0);
  }
 }
 return ret;
}
