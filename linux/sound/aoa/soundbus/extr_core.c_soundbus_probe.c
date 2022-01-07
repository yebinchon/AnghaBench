
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soundbus_driver {int (* probe ) (struct soundbus_dev*) ;} ;
struct soundbus_dev {int dummy; } ;
struct device {int driver; } ;


 int ENODEV ;
 int soundbus_dev_get (struct soundbus_dev*) ;
 int soundbus_dev_put (struct soundbus_dev*) ;
 int stub1 (struct soundbus_dev*) ;
 struct soundbus_dev* to_soundbus_device (struct device*) ;
 struct soundbus_driver* to_soundbus_driver (int ) ;

__attribute__((used)) static int soundbus_probe(struct device *dev)
{
 int error = -ENODEV;
 struct soundbus_driver *drv;
 struct soundbus_dev *soundbus_dev;

 drv = to_soundbus_driver(dev->driver);
 soundbus_dev = to_soundbus_device(dev);

 if (!drv->probe)
  return error;

 soundbus_dev_get(soundbus_dev);

 error = drv->probe(soundbus_dev);
 if (error)
  soundbus_dev_put(soundbus_dev);

 return error;
}
