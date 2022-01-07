
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {scalar_t__ klp_alive; } ;
struct klp_object {struct module* mod; int name; } ;


 struct module* find_module (int ) ;
 int klp_is_module (struct klp_object*) ;
 int module_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void klp_find_object_module(struct klp_object *obj)
{
 struct module *mod;

 if (!klp_is_module(obj))
  return;

 mutex_lock(&module_mutex);





 mod = find_module(obj->name);







 if (mod && mod->klp_alive)
  obj->mod = mod;

 mutex_unlock(&module_mutex);
}
