
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dev; } ;


 int dev_warn (int *,char*) ;

__attribute__((used)) static int xen_9pfs_front_resume(struct xenbus_device *dev)
{
 dev_warn(&dev->dev, "suspend/resume unsupported\n");
 return 0;
}
