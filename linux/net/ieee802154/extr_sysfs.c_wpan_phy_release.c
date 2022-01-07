
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cfg802154_registered_device {int dummy; } ;


 int cfg802154_dev_free (struct cfg802154_registered_device*) ;
 struct cfg802154_registered_device* dev_to_rdev (struct device*) ;

__attribute__((used)) static void wpan_phy_release(struct device *dev)
{
 struct cfg802154_registered_device *rdev = dev_to_rdev(dev);

 cfg802154_dev_free(rdev);
}
