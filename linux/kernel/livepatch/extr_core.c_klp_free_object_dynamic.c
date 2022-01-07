
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_object {struct klp_object* name; } ;


 int kfree (struct klp_object*) ;

__attribute__((used)) static void klp_free_object_dynamic(struct klp_object *obj)
{
 kfree(obj->name);
 kfree(obj);
}
