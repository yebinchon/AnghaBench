
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {scalar_t__ perm_addr; } ;


 int memcpy (int*,scalar_t__,int) ;

__attribute__((used)) static int addrconf_ifid_ip6tnl(u8 *eui, struct net_device *dev)
{
 memcpy(eui, dev->perm_addr, 3);
 memcpy(eui + 5, dev->perm_addr + 3, 3);
 eui[3] = 0xFF;
 eui[4] = 0xFE;
 eui[0] ^= 2;
 return 0;
}
