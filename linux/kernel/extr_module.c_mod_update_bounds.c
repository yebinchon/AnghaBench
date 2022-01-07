
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int base; } ;
struct TYPE_3__ {scalar_t__ size; int base; } ;
struct module {TYPE_2__ init_layout; TYPE_1__ core_layout; } ;


 int __mod_update_bounds (int ,scalar_t__) ;

__attribute__((used)) static void mod_update_bounds(struct module *mod)
{
 __mod_update_bounds(mod->core_layout.base, mod->core_layout.size);
 if (mod->init_layout.size)
  __mod_update_bounds(mod->init_layout.base, mod->init_layout.size);
}
