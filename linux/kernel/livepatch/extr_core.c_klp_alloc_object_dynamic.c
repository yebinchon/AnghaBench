
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_patch {int dummy; } ;
struct klp_object {int dynamic; int name; } ;


 int GFP_KERNEL ;
 int kfree (struct klp_object*) ;
 int klp_init_object_early (struct klp_patch*,struct klp_object*) ;
 int kstrdup (char const*,int ) ;
 struct klp_object* kzalloc (int,int ) ;

__attribute__((used)) static struct klp_object *klp_alloc_object_dynamic(const char *name,
         struct klp_patch *patch)
{
 struct klp_object *obj;

 obj = kzalloc(sizeof(*obj), GFP_KERNEL);
 if (!obj)
  return ((void*)0);

 if (name) {
  obj->name = kstrdup(name, GFP_KERNEL);
  if (!obj->name) {
   kfree(obj);
   return ((void*)0);
  }
 }

 klp_init_object_early(patch, obj);
 obj->dynamic = 1;

 return obj;
}
