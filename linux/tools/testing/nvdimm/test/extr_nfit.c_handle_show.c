
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dimm_name_to_id (struct device*) ;
 int* handle ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t handle_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 int dimm = dimm_name_to_id(dev);

 if (dimm < 0)
  return dimm;

 return sprintf(buf, "%#x\n", handle[dimm]);
}
