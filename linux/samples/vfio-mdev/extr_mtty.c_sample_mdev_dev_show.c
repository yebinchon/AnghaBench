
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* dev_name (struct device*) ;
 scalar_t__ mdev_from_dev (struct device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
sample_mdev_dev_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 if (mdev_from_dev(dev))
  return sprintf(buf, "This is MDEV %s\n", dev_name(dev));

 return sprintf(buf, "\n");
}
