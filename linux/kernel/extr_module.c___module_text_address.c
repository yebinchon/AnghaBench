
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int text_size; int base; } ;
struct TYPE_3__ {int text_size; int base; } ;
struct module {TYPE_2__ core_layout; TYPE_1__ init_layout; } ;


 struct module* __module_address (unsigned long) ;
 int within (unsigned long,int ,int ) ;

struct module *__module_text_address(unsigned long addr)
{
 struct module *mod = __module_address(addr);
 if (mod) {

  if (!within(addr, mod->init_layout.base, mod->init_layout.text_size)
      && !within(addr, mod->core_layout.base, mod->core_layout.text_size))
   mod = ((void*)0);
 }
 return mod;
}
