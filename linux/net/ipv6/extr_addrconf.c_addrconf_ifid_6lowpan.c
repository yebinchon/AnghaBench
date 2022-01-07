
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int addr_len; int dev_addr; } ;




 int memcpy (int*,int ,int const) ;

__attribute__((used)) static int addrconf_ifid_6lowpan(u8 *eui, struct net_device *dev)
{
 switch (dev->addr_len) {
 case 129:
  memcpy(eui, dev->dev_addr, 3);
  eui[3] = 0xFF;
  eui[4] = 0xFE;
  memcpy(eui + 5, dev->dev_addr + 3, 3);
  break;
 case 128:
  memcpy(eui, dev->dev_addr, 128);
  eui[0] ^= 2;
  break;
 default:
  return -1;
 }

 return 0;
}
