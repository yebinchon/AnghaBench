
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbochs_type {int mbytes; } ;
struct kobject {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int max_mbytes ;
 struct mbochs_type* mbochs_find_type (struct kobject*) ;
 int mbochs_used_mbytes ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
available_instances_show(struct kobject *kobj, struct device *dev, char *buf)
{
 const struct mbochs_type *type = mbochs_find_type(kobj);
 int count = (max_mbytes - mbochs_used_mbytes) / type->mbytes;

 return sprintf(buf, "%d\n", count);
}
