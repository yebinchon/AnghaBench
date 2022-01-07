
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {scalar_t__ state; int klp_alive; } ;


 scalar_t__ MODULE_STATE_COMING ;
 scalar_t__ MODULE_STATE_GOING ;
 scalar_t__ WARN_ON (int) ;
 int klp_cleanup_module_patches_limited (struct module*,int *) ;
 int klp_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void klp_module_going(struct module *mod)
{
 if (WARN_ON(mod->state != MODULE_STATE_GOING &&
      mod->state != MODULE_STATE_COMING))
  return;

 mutex_lock(&klp_mutex);





 mod->klp_alive = 0;

 klp_cleanup_module_patches_limited(mod, ((void*)0));

 mutex_unlock(&klp_mutex);
}
