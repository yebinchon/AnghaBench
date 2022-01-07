
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct soundbus_dev {TYPE_1__ ofdev; } ;
struct device {int dummy; } ;


 struct device* get_device (int *) ;
 struct soundbus_dev* to_soundbus_device (struct device*) ;

struct soundbus_dev *soundbus_dev_get(struct soundbus_dev *dev)
{
 struct device *tmp;

 if (!dev)
  return ((void*)0);
 tmp = get_device(&dev->ofdev.dev);
 if (tmp)
  return to_soundbus_device(tmp);
 else
  return ((void*)0);
}
