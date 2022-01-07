
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_entry {TYPE_1__* dev; } ;
struct TYPE_2__ {unsigned int mtu; } ;


 int RTAX_MTU ;
 unsigned int dst_metric_raw (struct dst_entry const*,int ) ;

__attribute__((used)) static unsigned int dn_dst_mtu(const struct dst_entry *dst)
{
 unsigned int mtu = dst_metric_raw(dst, RTAX_MTU);

 return mtu ? : dst->dev->mtu;
}
