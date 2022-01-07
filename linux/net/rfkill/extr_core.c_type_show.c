
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {size_t type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char** rfkill_types ;
 int sprintf (char*,char*,char*) ;
 struct rfkill* to_rfkill (struct device*) ;

__attribute__((used)) static ssize_t type_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct rfkill *rfkill = to_rfkill(dev);

 return sprintf(buf, "%s\n", rfkill_types[rfkill->type]);
}
