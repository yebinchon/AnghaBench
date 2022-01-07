
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbochs_type {int mbytes; } ;
struct kobject {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct mbochs_type* mbochs_find_type (struct kobject*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
description_show(struct kobject *kobj, struct device *dev, char *buf)
{
 const struct mbochs_type *type = mbochs_find_type(kobj);

 return sprintf(buf, "virtual display, %d MB video memory\n",
         type ? type->mbytes : 0);
}
