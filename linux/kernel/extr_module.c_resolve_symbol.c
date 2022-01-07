
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int taints; } ;
struct load_info {int dummy; } ;
struct kernel_symbol {int dummy; } ;
typedef int s32 ;


 int EINVAL ;
 struct kernel_symbol* ERR_PTR (int) ;
 int MODULE_NAME_LEN ;
 int TAINT_PROPRIETARY_MODULE ;
 int check_version (struct load_info const*,char const*,struct module*,int const*) ;
 struct kernel_symbol* find_symbol (char const*,struct module**,int const**,int,int) ;
 int module_mutex ;
 int module_name (struct module*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ref_module (struct module*,struct module*) ;
 int sched_annotate_sleep () ;
 int strncpy (char*,int ,int ) ;
 int verify_namespace_is_imported (struct load_info const*,struct kernel_symbol const*,struct module*) ;

__attribute__((used)) static const struct kernel_symbol *resolve_symbol(struct module *mod,
        const struct load_info *info,
        const char *name,
        char ownername[])
{
 struct module *owner;
 const struct kernel_symbol *sym;
 const s32 *crc;
 int err;






 sched_annotate_sleep();
 mutex_lock(&module_mutex);
 sym = find_symbol(name, &owner, &crc,
     !(mod->taints & (1 << TAINT_PROPRIETARY_MODULE)), 1);
 if (!sym)
  goto unlock;

 if (!check_version(info, name, mod, crc)) {
  sym = ERR_PTR(-EINVAL);
  goto getname;
 }

 err = verify_namespace_is_imported(info, sym, mod);
 if (err) {
  sym = ERR_PTR(err);
  goto getname;
 }

 err = ref_module(mod, owner);
 if (err) {
  sym = ERR_PTR(err);
  goto getname;
 }

getname:

 strncpy(ownername, module_name(owner), MODULE_NAME_LEN);
unlock:
 mutex_unlock(&module_mutex);
 return sym;
}
