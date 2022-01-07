
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int dev; } ;


 int put_device (int *) ;

void wpan_phy_free(struct wpan_phy *phy)
{
 put_device(&phy->dev);
}
