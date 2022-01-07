
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skl_dev {TYPE_1__* pci; } ;
struct device {int kobj; } ;
struct TYPE_4__ {int attr; } ;
struct TYPE_3__ {struct device dev; } ;


 TYPE_2__ dev_attr_platform_id ;
 int sysfs_remove_file (int *,int *) ;

void skl_nhlt_remove_sysfs(struct skl_dev *skl)
{
 struct device *dev = &skl->pci->dev;

 sysfs_remove_file(&dev->kobj, &dev_attr_platform_id.attr);
}
