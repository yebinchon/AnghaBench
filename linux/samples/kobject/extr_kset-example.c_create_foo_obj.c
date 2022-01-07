
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kset; } ;
struct foo_obj {TYPE_1__ kobj; } ;


 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int example_kset ;
 int foo_ktype ;
 int kobject_init_and_add (TYPE_1__*,int *,int *,char*,char const*) ;
 int kobject_put (TYPE_1__*) ;
 int kobject_uevent (TYPE_1__*,int ) ;
 struct foo_obj* kzalloc (int,int ) ;

__attribute__((used)) static struct foo_obj *create_foo_obj(const char *name)
{
 struct foo_obj *foo;
 int retval;


 foo = kzalloc(sizeof(*foo), GFP_KERNEL);
 if (!foo)
  return ((void*)0);





 foo->kobj.kset = example_kset;







 retval = kobject_init_and_add(&foo->kobj, &foo_ktype, ((void*)0), "%s", name);
 if (retval) {
  kobject_put(&foo->kobj);
  return ((void*)0);
 }





 kobject_uevent(&foo->kobj, KOBJ_ADD);

 return foo;
}
