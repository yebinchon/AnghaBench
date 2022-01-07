
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int foo ;
 int kstrtoint (char const*,int,int *) ;

__attribute__((used)) static ssize_t foo_store(struct kobject *kobj, struct kobj_attribute *attr,
    const char *buf, size_t count)
{
 int ret;

 ret = kstrtoint(buf, 10, &foo);
 if (ret < 0)
  return ret;

 return count;
}
