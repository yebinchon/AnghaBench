
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct foo_obj {int foo; } ;
struct foo_attribute {int dummy; } ;
typedef int ssize_t ;


 int kstrtoint (char const*,int,int *) ;

__attribute__((used)) static ssize_t foo_store(struct foo_obj *foo_obj, struct foo_attribute *attr,
    const char *buf, size_t count)
{
 int ret;

 ret = kstrtoint(buf, 10, &foo_obj->foo);
 if (ret < 0)
  return ret;

 return count;
}
