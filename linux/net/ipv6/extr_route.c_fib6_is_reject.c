
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int flags; } ;


 int IFF_LOOPBACK ;
 int IPV6_ADDR_LOOPBACK ;
 int RTF_LOCAL ;
 int RTF_REJECT ;

__attribute__((used)) static bool fib6_is_reject(u32 flags, struct net_device *dev, int addr_type)
{
 if ((flags & RTF_REJECT) ||
     (dev && (dev->flags & IFF_LOOPBACK) &&
      !(addr_type & IPV6_ADDR_LOOPBACK) &&
      !(flags & RTF_LOCAL)))
  return 1;

 return 0;
}
