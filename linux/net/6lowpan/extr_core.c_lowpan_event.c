
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ type; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int * s6_addr32; int s6_addr; } ;
struct TYPE_5__ {TYPE_1__* table; } ;
struct TYPE_6__ {TYPE_2__ ctx; } ;
struct TYPE_4__ {int flags; } ;


 scalar_t__ ARPHRD_6LOWPAN ;
 int LOWPAN_IPHC_CTX_FLAG_ACTIVE ;
 int LOWPAN_IPHC_CTX_TABLE_SIZE ;
 int LOWPAN_LLTYPE_IEEE802154 ;



 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int __ipv6_addr_set_half (int *,int ,int ) ;
 int addrconf_add_linklocal (struct inet6_dev*,struct in6_addr*,int ) ;
 int addrconf_ifid_802154_6lowpan (int ,struct net_device*) ;
 int clear_bit (int ,int *) ;
 int htonl (int) ;
 TYPE_3__* lowpan_dev (struct net_device*) ;
 int lowpan_is_ll (struct net_device*,int ) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;

__attribute__((used)) static int lowpan_event(struct notifier_block *unused,
   unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct inet6_dev *idev;
 struct in6_addr addr;
 int i;

 if (dev->type != ARPHRD_6LOWPAN)
  return NOTIFY_DONE;

 idev = __in6_dev_get(dev);
 if (!idev)
  return NOTIFY_DONE;

 switch (event) {
 case 128:
 case 130:

  if (lowpan_is_ll(dev, LOWPAN_LLTYPE_IEEE802154) &&
      addrconf_ifid_802154_6lowpan(addr.s6_addr + 8, dev) == 0) {
   __ipv6_addr_set_half(&addr.s6_addr32[0],
          htonl(0xFE800000), 0);
   addrconf_add_linklocal(idev, &addr, 0);
  }
  break;
 case 129:
  for (i = 0; i < LOWPAN_IPHC_CTX_TABLE_SIZE; i++)
   clear_bit(LOWPAN_IPHC_CTX_FLAG_ACTIVE,
      &lowpan_dev(dev)->ctx.table[i].flags);
  break;
 default:
  return NOTIFY_DONE;
 }

 return NOTIFY_OK;
}
