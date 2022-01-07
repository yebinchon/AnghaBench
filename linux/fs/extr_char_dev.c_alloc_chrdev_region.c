
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct char_device_struct {int baseminor; int major; } ;
typedef int dev_t ;


 scalar_t__ IS_ERR (struct char_device_struct*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct char_device_struct*) ;
 struct char_device_struct* __register_chrdev_region (int ,unsigned int,unsigned int,char const*) ;

int alloc_chrdev_region(dev_t *dev, unsigned baseminor, unsigned count,
   const char *name)
{
 struct char_device_struct *cd;
 cd = __register_chrdev_region(0, baseminor, count, name);
 if (IS_ERR(cd))
  return PTR_ERR(cd);
 *dev = MKDEV(cd->major, cd->baseminor);
 return 0;
}
