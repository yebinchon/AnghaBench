
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int base; } ;
struct TYPE_3__ {int base; } ;
struct module {TYPE_2__ core_layout; TYPE_1__ init_layout; } ;
struct load_info {int dummy; } ;


 int module_arch_freeing_init (struct module*) ;
 int module_memfree (int ) ;
 int percpu_modfree (struct module*) ;

__attribute__((used)) static void module_deallocate(struct module *mod, struct load_info *info)
{
 percpu_modfree(mod);
 module_arch_freeing_init(mod);
 module_memfree(mod->init_layout.base);
 module_memfree(mod->core_layout.base);
}
