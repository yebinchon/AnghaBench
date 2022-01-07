
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct foo_obj {int kobj; } ;


 int kobject_put (int *) ;

__attribute__((used)) static void destroy_foo_obj(struct foo_obj *foo)
{
 kobject_put(&foo->kobj);
}
