
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int state; } ;
struct load_info {int sechdrs; int hdr; } ;


 int MODULE_STATE_COMING ;
 int module_bug_finalize (int ,int ,struct module*) ;
 int module_enable_nx (struct module*) ;
 int module_enable_ro (struct module*,int) ;
 int module_enable_x (struct module*) ;
 int module_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int verify_exported_symbols (struct module*) ;

__attribute__((used)) static int complete_formation(struct module *mod, struct load_info *info)
{
 int err;

 mutex_lock(&module_mutex);


 err = verify_exported_symbols(mod);
 if (err < 0)
  goto out;


 module_bug_finalize(info->hdr, info->sechdrs, mod);

 module_enable_ro(mod, 0);
 module_enable_nx(mod);
 module_enable_x(mod);



 mod->state = MODULE_STATE_COMING;
 mutex_unlock(&module_mutex);

 return 0;

out:
 mutex_unlock(&module_mutex);
 return err;
}
