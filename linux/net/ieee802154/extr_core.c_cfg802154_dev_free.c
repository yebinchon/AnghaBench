
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg802154_registered_device {int dummy; } ;


 int kfree (struct cfg802154_registered_device*) ;

void cfg802154_dev_free(struct cfg802154_registered_device *rdev)
{
 kfree(rdev);
}
