
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpan_phy {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct wpan_phy wpan_phy; } ;


 char* dev_name (int *) ;
 TYPE_1__* dev_to_rdev (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t name_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 struct wpan_phy *wpan_phy = &dev_to_rdev(dev)->wpan_phy;

 return sprintf(buf, "%s\n", dev_name(&wpan_phy->dev));
}
