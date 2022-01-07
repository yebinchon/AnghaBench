
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdpy_type {int width; int height; } ;
struct kobject {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct mdpy_type* mdpy_find_type (struct kobject*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t
description_show(struct kobject *kobj, struct device *dev, char *buf)
{
 const struct mdpy_type *type = mdpy_find_type(kobj);

 return sprintf(buf, "virtual display, %dx%d framebuffer\n",
         type ? type->width : 0,
         type ? type->height : 0);
}
