
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct miscdevice {int dummy; } ;
struct kmod_test_device {int dummy; } ;
struct device {int dummy; } ;


 struct miscdevice* dev_to_misc_dev (struct device*) ;
 struct kmod_test_device* misc_dev_to_test_dev (struct miscdevice*) ;

__attribute__((used)) static struct kmod_test_device *dev_to_test_dev(struct device *dev)
{
 struct miscdevice *misc_dev;

 misc_dev = dev_to_misc_dev(dev);

 return misc_dev_to_test_dev(misc_dev);
}
