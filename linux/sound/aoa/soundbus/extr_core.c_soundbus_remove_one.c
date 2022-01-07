
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soundbus_dev {int ofdev; } ;


 int of_device_unregister (int *) ;

void soundbus_remove_one(struct soundbus_dev *dev)
{
 of_device_unregister(&dev->ofdev);
}
