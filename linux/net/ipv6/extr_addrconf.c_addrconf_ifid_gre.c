
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {scalar_t__ dev_addr; } ;
typedef int __be32 ;


 int __ipv6_isatap_ifid (int *,int ) ;

__attribute__((used)) static int addrconf_ifid_gre(u8 *eui, struct net_device *dev)
{
 return __ipv6_isatap_ifid(eui, *(__be32 *)dev->dev_addr);
}
