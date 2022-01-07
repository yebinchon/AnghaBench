
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int max_devices ;
 int mdpy_count ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
available_instances_show(struct kobject *kobj, struct device *dev, char *buf)
{
 return sprintf(buf, "%d\n", max_devices - mdpy_count);
}
