
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {int dummy; } ;


 int RTAX_MTU ;
 unsigned int dst_metric_raw (struct dst_entry const*,int ) ;
 unsigned int dst_mtu (int ) ;
 int xfrm_dst_path (struct dst_entry const*) ;

__attribute__((used)) static unsigned int xfrm_mtu(const struct dst_entry *dst)
{
 unsigned int mtu = dst_metric_raw(dst, RTAX_MTU);

 return mtu ? : dst_mtu(xfrm_dst_path(dst));
}
