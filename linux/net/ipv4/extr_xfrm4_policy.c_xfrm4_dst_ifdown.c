
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dst_entry {int dummy; } ;


 int xfrm_dst_ifdown (struct dst_entry*,struct net_device*) ;

__attribute__((used)) static void xfrm4_dst_ifdown(struct dst_entry *dst, struct net_device *dev,
        int unregister)
{
 if (!unregister)
  return;

 xfrm_dst_ifdown(dst, dev);
}
