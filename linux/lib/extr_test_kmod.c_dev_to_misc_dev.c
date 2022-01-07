
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct miscdevice {int dummy; } ;
struct device {int dummy; } ;


 struct miscdevice* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct miscdevice *dev_to_misc_dev(struct device *dev)
{
 return dev_get_drvdata(dev);
}
