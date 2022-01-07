
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpan_phy {int dummy; } ;
struct wpan_dev {int csma_retries; } ;


 int ASSERT_RTNL () ;

__attribute__((used)) static int
ieee802154_set_max_csma_backoffs(struct wpan_phy *wpan_phy,
     struct wpan_dev *wpan_dev,
     u8 max_csma_backoffs)
{
 ASSERT_RTNL();

 wpan_dev->csma_retries = max_csma_backoffs;
 return 0;
}
