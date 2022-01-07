
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct kobj_attribute {TYPE_1__ attr; } ;
typedef int ssize_t ;


 int bar ;
 int baz ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static ssize_t b_show(struct kobject *kobj, struct kobj_attribute *attr,
        char *buf)
{
 int var;

 if (strcmp(attr->attr.name, "baz") == 0)
  var = baz;
 else
  var = bar;
 return sprintf(buf, "%d\n", var);
}
