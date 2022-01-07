
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct foo_obj {int foo; } ;
struct foo_attribute {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t foo_show(struct foo_obj *foo_obj, struct foo_attribute *attr,
   char *buf)
{
 return sprintf(buf, "%d\n", foo_obj->foo);
}
