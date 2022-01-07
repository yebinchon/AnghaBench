
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {scalar_t__ state; int list; int name; } ;


 int EEXIST ;
 scalar_t__ MODULE_STATE_LIVE ;
 scalar_t__ MODULE_STATE_UNFORMED ;
 struct module* find_module_all (int ,int ,int) ;
 int finished_loading (int ) ;
 int list_add_rcu (int *,int *) ;
 int mod_tree_insert (struct module*) ;
 int mod_update_bounds (struct module*) ;
 int module_mutex ;
 int module_wq ;
 int modules ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (int ) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int add_unformed_module(struct module *mod)
{
 int err;
 struct module *old;

 mod->state = MODULE_STATE_UNFORMED;

again:
 mutex_lock(&module_mutex);
 old = find_module_all(mod->name, strlen(mod->name), 1);
 if (old != ((void*)0)) {
  if (old->state != MODULE_STATE_LIVE) {

   mutex_unlock(&module_mutex);
   err = wait_event_interruptible(module_wq,
            finished_loading(mod->name));
   if (err)
    goto out_unlocked;
   goto again;
  }
  err = -EEXIST;
  goto out;
 }
 mod_update_bounds(mod);
 list_add_rcu(&mod->list, &modules);
 mod_tree_insert(mod);
 err = 0;

out:
 mutex_unlock(&module_mutex);
out_unlocked:
 return err;
}
