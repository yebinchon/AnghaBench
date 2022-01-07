
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_device {int dummy; } ;


 int ENODEV ;
 int THIS_MODULE ;
 int try_module_get (int ) ;

__attribute__((used)) static int mdpy_open(struct mdev_device *mdev)
{
 if (!try_module_get(THIS_MODULE))
  return -ENODEV;

 return 0;
}
