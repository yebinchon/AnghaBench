
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uniq_id; } ;
union fwnet_hwaddr {TYPE_1__ uc; } ;
typedef int u8 ;
struct net_device {scalar_t__ addr_len; scalar_t__ dev_addr; } ;


 scalar_t__ FWNET_ALEN ;
 int memcpy (int*,int *,int) ;

__attribute__((used)) static int addrconf_ifid_ieee1394(u8 *eui, struct net_device *dev)
{
 union fwnet_hwaddr *ha;

 if (dev->addr_len != FWNET_ALEN)
  return -1;

 ha = (union fwnet_hwaddr *)dev->dev_addr;

 memcpy(eui, &ha->uc.uniq_id, sizeof(ha->uc.uniq_id));
 eui[0] ^= 2;
 return 0;
}
