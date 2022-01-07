
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int dummy; } ;
struct wpan_dev {int frame_retries; } ;
typedef int s8 ;


 int ASSERT_RTNL () ;

__attribute__((used)) static int
ieee802154_set_max_frame_retries(struct wpan_phy *wpan_phy,
     struct wpan_dev *wpan_dev,
     s8 max_frame_retries)
{
 ASSERT_RTNL();

 wpan_dev->frame_retries = max_frame_retries;
 return 0;
}
