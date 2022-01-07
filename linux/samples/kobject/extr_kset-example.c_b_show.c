
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct foo_obj {int baz; int bar; } ;
struct TYPE_2__ {int name; } ;
struct foo_attribute {TYPE_1__ attr; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static ssize_t b_show(struct foo_obj *foo_obj, struct foo_attribute *attr,
        char *buf)
{
 int var;

 if (strcmp(attr->attr.name, "baz") == 0)
  var = foo_obj->baz;
 else
  var = foo_obj->bar;
 return sprintf(buf, "%d\n", var);
}
