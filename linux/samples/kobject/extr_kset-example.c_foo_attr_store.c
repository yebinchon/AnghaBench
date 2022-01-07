
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct foo_obj {int dummy; } ;
struct foo_attribute {int (* store ) (struct foo_obj*,struct foo_attribute*,char const*,size_t) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct foo_obj*,struct foo_attribute*,char const*,size_t) ;
 struct foo_attribute* to_foo_attr (struct attribute*) ;
 struct foo_obj* to_foo_obj (struct kobject*) ;

__attribute__((used)) static ssize_t foo_attr_store(struct kobject *kobj,
         struct attribute *attr,
         const char *buf, size_t len)
{
 struct foo_attribute *attribute;
 struct foo_obj *foo;

 attribute = to_foo_attr(attr);
 foo = to_foo_obj(kobj);

 if (!attribute->store)
  return -EIO;

 return attribute->store(foo, attribute, buf, len);
}
