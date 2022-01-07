
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {TYPE_1__* wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ethtool_regs {scalar_t__ len; int version; } ;
struct TYPE_2__ {int hw_version; } ;



__attribute__((used)) static void ieee80211_get_regs(struct net_device *dev,
          struct ethtool_regs *regs,
          void *data)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;

 regs->version = wdev->wiphy->hw_version;
 regs->len = 0;
}
