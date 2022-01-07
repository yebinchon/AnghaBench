
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int name; } ;
struct load_info {int dummy; } ;
struct kernel_symbol {int dummy; } ;


 int EBUSY ;
 int HZ ;
 int IS_ERR (struct kernel_symbol const*) ;
 int MODULE_NAME_LEN ;
 int PTR_ERR (struct kernel_symbol const*) ;
 int module_wq ;
 int pr_warn (char*,int ,char*) ;
 struct kernel_symbol* resolve_symbol (struct module*,struct load_info const*,char const*,char*) ;
 scalar_t__ wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static const struct kernel_symbol *
resolve_symbol_wait(struct module *mod,
      const struct load_info *info,
      const char *name)
{
 const struct kernel_symbol *ksym;
 char owner[MODULE_NAME_LEN];

 if (wait_event_interruptible_timeout(module_wq,
   !IS_ERR(ksym = resolve_symbol(mod, info, name, owner))
   || PTR_ERR(ksym) != -EBUSY,
          30 * HZ) <= 0) {
  pr_warn("%s: gave up waiting for init of module %s.\n",
   mod->name, owner);
 }
 return ksym;
}
