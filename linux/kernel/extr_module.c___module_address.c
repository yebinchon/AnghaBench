
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {scalar_t__ state; } ;


 int BUG_ON (int) ;
 scalar_t__ MODULE_STATE_UNFORMED ;
 struct module* mod_find (unsigned long) ;
 unsigned long module_addr_max ;
 unsigned long module_addr_min ;
 int module_assert_mutex_or_preempt () ;
 int within_module (unsigned long,struct module*) ;

struct module *__module_address(unsigned long addr)
{
 struct module *mod;

 if (addr < module_addr_min || addr > module_addr_max)
  return ((void*)0);

 module_assert_mutex_or_preempt();

 mod = mod_find(addr);
 if (mod) {
  BUG_ON(!within_module(addr, mod));
  if (mod->state == MODULE_STATE_UNFORMED)
   mod = ((void*)0);
 }
 return mod;
}
