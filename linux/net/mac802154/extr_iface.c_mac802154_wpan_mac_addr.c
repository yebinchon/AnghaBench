
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct TYPE_2__ {struct net_device* lowpan_dev; int extended_addr; } ;
struct ieee802154_sub_if_data {TYPE_1__ wpan_dev; } ;
typedef int __le64 ;


 int EBUSY ;
 int EINVAL ;
 struct ieee802154_sub_if_data* IEEE802154_DEV_TO_SUB_IF (struct net_device*) ;
 int ieee802154_be64_to_le64 (int *,int ) ;
 int ieee802154_is_valid_extended_unicast_addr (int ) ;
 int mac802154_wpan_update_llsec (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int mac802154_wpan_mac_addr(struct net_device *dev, void *p)
{
 struct ieee802154_sub_if_data *sdata = IEEE802154_DEV_TO_SUB_IF(dev);
 struct sockaddr *addr = p;
 __le64 extended_addr;

 if (netif_running(dev))
  return -EBUSY;




 if (sdata->wpan_dev.lowpan_dev) {
  if (netif_running(sdata->wpan_dev.lowpan_dev))
   return -EBUSY;
 }

 ieee802154_be64_to_le64(&extended_addr, addr->sa_data);
 if (!ieee802154_is_valid_extended_unicast_addr(extended_addr))
  return -EINVAL;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 sdata->wpan_dev.extended_addr = extended_addr;




 if (sdata->wpan_dev.lowpan_dev)
  memcpy(sdata->wpan_dev.lowpan_dev->dev_addr, dev->dev_addr,
         dev->addr_len);

 return mac802154_wpan_update_llsec(dev);
}
