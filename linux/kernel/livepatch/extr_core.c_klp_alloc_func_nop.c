
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_object {int dummy; } ;
struct klp_func {int nop; int old_sympos; scalar_t__ old_name; } ;


 int GFP_KERNEL ;
 int kfree (struct klp_func*) ;
 int klp_init_func_early (struct klp_object*,struct klp_func*) ;
 scalar_t__ kstrdup (scalar_t__,int ) ;
 struct klp_func* kzalloc (int,int ) ;

__attribute__((used)) static struct klp_func *klp_alloc_func_nop(struct klp_func *old_func,
        struct klp_object *obj)
{
 struct klp_func *func;

 func = kzalloc(sizeof(*func), GFP_KERNEL);
 if (!func)
  return ((void*)0);

 if (old_func->old_name) {
  func->old_name = kstrdup(old_func->old_name, GFP_KERNEL);
  if (!func->old_name) {
   kfree(func);
   return ((void*)0);
  }
 }

 klp_init_func_early(obj, func);




 func->old_sympos = old_func->old_sympos;
 func->nop = 1;

 return func;
}
