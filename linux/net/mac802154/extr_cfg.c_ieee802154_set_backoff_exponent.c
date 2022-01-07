
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct wpan_phy {int dummy; } ;
struct wpan_dev {void* max_be; void* min_be; } ;


 int ASSERT_RTNL () ;

__attribute__((used)) static int
ieee802154_set_backoff_exponent(struct wpan_phy *wpan_phy,
    struct wpan_dev *wpan_dev,
    u8 min_be, u8 max_be)
{
 ASSERT_RTNL();

 wpan_dev->min_be = min_be;
 wpan_dev->max_be = max_be;
 return 0;
}
