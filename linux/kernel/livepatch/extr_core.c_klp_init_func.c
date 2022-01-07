
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_object {int kobj; } ;
struct klp_func {int patched; int transition; int old_sympos; int old_name; int kobj; int stack_node; int nop; int new_func; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ KSYM_NAME_LEN ;
 int kobject_add (int *,int *,char*,int ,int) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int klp_init_func(struct klp_object *obj, struct klp_func *func)
{
 if (!func->old_name)
  return -EINVAL;





 if (!func->new_func && !func->nop)
  return -EINVAL;

 if (strlen(func->old_name) >= KSYM_NAME_LEN)
  return -EINVAL;

 INIT_LIST_HEAD(&func->stack_node);
 func->patched = 0;
 func->transition = 0;






 return kobject_add(&func->kobj, &obj->kobj, "%s,%lu",
      func->old_name,
      func->old_sympos ? func->old_sympos : 1);
}
