
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int drivers_dir; } ;
struct module {int holders_dir; TYPE_1__ mkobj; } ;


 int del_usage_links (struct module*) ;
 int kobject_put (int ) ;
 int mod_sysfs_fini (struct module*) ;
 int module_param_sysfs_remove (struct module*) ;
 int module_remove_modinfo_attrs (struct module*,int) ;

__attribute__((used)) static void mod_sysfs_teardown(struct module *mod)
{
 del_usage_links(mod);
 module_remove_modinfo_attrs(mod, -1);
 module_param_sysfs_remove(mod);
 kobject_put(mod->mkobj.drivers_dir);
 kobject_put(mod->holders_dir);
 mod_sysfs_fini(mod);
}
