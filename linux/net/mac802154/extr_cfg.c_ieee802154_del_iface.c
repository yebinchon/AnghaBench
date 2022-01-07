
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int dummy; } ;
struct wpan_dev {int dummy; } ;


 int IEEE802154_WPAN_DEV_TO_SUB_IF (struct wpan_dev*) ;
 int ieee802154_if_remove (int ) ;

__attribute__((used)) static int
ieee802154_del_iface(struct wpan_phy *wpan_phy, struct wpan_dev *wpan_dev)
{
 ieee802154_if_remove(IEEE802154_WPAN_DEV_TO_SUB_IF(wpan_dev));

 return 0;
}
