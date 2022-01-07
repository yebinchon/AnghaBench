
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int* dimm_fail_cmd_code ;
 int dimm_name_to_id (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fail_cmd_code_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 int dimm = dimm_name_to_id(dev);

 if (dimm < 0)
  return dimm;

 return sprintf(buf, "%d\n", dimm_fail_cmd_code[dimm]);
}
