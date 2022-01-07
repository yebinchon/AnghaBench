
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 unsigned long image_size ;
 int sscanf (char const*,char*,unsigned long*) ;

__attribute__((used)) static ssize_t image_size_store(struct kobject *kobj, struct kobj_attribute *attr,
    const char *buf, size_t n)
{
 unsigned long size;

 if (sscanf(buf, "%lu", &size) == 1) {
  image_size = size;
  return n;
 }

 return -EINVAL;
}
