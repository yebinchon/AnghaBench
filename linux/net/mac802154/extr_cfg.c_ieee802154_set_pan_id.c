
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int dummy; } ;
struct wpan_dev {scalar_t__ pan_id; int netdev; } ;
typedef scalar_t__ __le16 ;


 int ASSERT_RTNL () ;
 int mac802154_wpan_update_llsec (int ) ;

__attribute__((used)) static int
ieee802154_set_pan_id(struct wpan_phy *wpan_phy, struct wpan_dev *wpan_dev,
        __le16 pan_id)
{
 int ret;

 ASSERT_RTNL();

 if (wpan_dev->pan_id == pan_id)
  return 0;

 ret = mac802154_wpan_update_llsec(wpan_dev->netdev);
 if (!ret)
  wpan_dev->pan_id = pan_id;

 return ret;
}
