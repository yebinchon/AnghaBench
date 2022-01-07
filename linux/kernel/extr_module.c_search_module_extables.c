
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int num_exentries; int extable; } ;
struct exception_table_entry {int dummy; } ;


 struct module* __module_address (unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;
 struct exception_table_entry* search_extable (int ,int ,unsigned long) ;

const struct exception_table_entry *search_module_extables(unsigned long addr)
{
 const struct exception_table_entry *e = ((void*)0);
 struct module *mod;

 preempt_disable();
 mod = __module_address(addr);
 if (!mod)
  goto out;

 if (!mod->num_exentries)
  goto out;

 e = search_extable(mod->extable,
      mod->num_exentries,
      addr);
out:
 preempt_enable();





 return e;
}
