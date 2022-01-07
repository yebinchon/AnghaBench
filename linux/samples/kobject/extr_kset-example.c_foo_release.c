
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct foo_obj {int dummy; } ;


 int kfree (struct foo_obj*) ;
 struct foo_obj* to_foo_obj (struct kobject*) ;

__attribute__((used)) static void foo_release(struct kobject *kobj)
{
 struct foo_obj *foo;

 foo = to_foo_obj(kobj);
 kfree(foo);
}
