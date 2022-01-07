
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct wpan_dev {void* short_addr; void* pan_id; } ;
struct TYPE_2__ {void* pan_id; void* short_addr; int addr_type; } ;
struct sockaddr_ieee802154 {TYPE_1__ addr; int family; } ;
struct net_device {int dev; } ;
struct ifreq {int ifr_addr; } ;
struct ieee802154_sub_if_data {struct wpan_dev wpan_dev; } ;


 int AF_IEEE802154 ;
 int EADDRNOTAVAIL ;
 int EBUSY ;
 int EINVAL ;
 int ENOIOCTLCMD ;
 void* IEEE802154_ADDR_BROADCAST ;
 int IEEE802154_ADDR_SHORT ;
 void* IEEE802154_ADDR_UNDEF ;
 struct ieee802154_sub_if_data* IEEE802154_DEV_TO_SUB_IF (struct net_device*) ;
 void* IEEE802154_PANID_BROADCAST ;


 void* cpu_to_le16 (void*) ;
 int dev_warn (int *,char*) ;
 void* le16_to_cpu (void*) ;
 int mac802154_wpan_update_llsec (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int
mac802154_wpan_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct ieee802154_sub_if_data *sdata = IEEE802154_DEV_TO_SUB_IF(dev);
 struct wpan_dev *wpan_dev = &sdata->wpan_dev;
 struct sockaddr_ieee802154 *sa =
  (struct sockaddr_ieee802154 *)&ifr->ifr_addr;
 int err = -ENOIOCTLCMD;

 if (cmd != 129 && cmd != 128)
  return err;

 rtnl_lock();

 switch (cmd) {
 case 129:
 {
  u16 pan_id, short_addr;

  pan_id = le16_to_cpu(wpan_dev->pan_id);
  short_addr = le16_to_cpu(wpan_dev->short_addr);
  if (pan_id == IEEE802154_PANID_BROADCAST ||
      short_addr == IEEE802154_ADDR_BROADCAST) {
   err = -EADDRNOTAVAIL;
   break;
  }

  sa->family = AF_IEEE802154;
  sa->addr.addr_type = IEEE802154_ADDR_SHORT;
  sa->addr.pan_id = pan_id;
  sa->addr.short_addr = short_addr;

  err = 0;
  break;
 }
 case 128:
  if (netif_running(dev)) {
   rtnl_unlock();
   return -EBUSY;
  }

  dev_warn(&dev->dev,
    "Using DEBUGing ioctl SIOCSIFADDR isn't recommended!\n");
  if (sa->family != AF_IEEE802154 ||
      sa->addr.addr_type != IEEE802154_ADDR_SHORT ||
      sa->addr.pan_id == IEEE802154_PANID_BROADCAST ||
      sa->addr.short_addr == IEEE802154_ADDR_BROADCAST ||
      sa->addr.short_addr == IEEE802154_ADDR_UNDEF) {
   err = -EINVAL;
   break;
  }

  wpan_dev->pan_id = cpu_to_le16(sa->addr.pan_id);
  wpan_dev->short_addr = cpu_to_le16(sa->addr.short_addr);

  err = mac802154_wpan_update_llsec(dev);
  break;
 }

 rtnl_unlock();
 return err;
}
