
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int dummy; } ;
struct wpan_dev {int short_addr; } ;
typedef int __le16 ;


 int ASSERT_RTNL () ;

__attribute__((used)) static int
ieee802154_set_short_addr(struct wpan_phy *wpan_phy, struct wpan_dev *wpan_dev,
     __le16 short_addr)
{
 ASSERT_RTNL();

 wpan_dev->short_addr = short_addr;
 return 0;
}
