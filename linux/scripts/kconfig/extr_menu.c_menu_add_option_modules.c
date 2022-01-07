
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sym; } ;
struct TYPE_3__ {int name; } ;


 TYPE_2__* current_entry ;
 TYPE_1__* modules_sym ;
 int zconf_error (char*,int ,int ) ;

void menu_add_option_modules(void)
{
 if (modules_sym)
  zconf_error("symbol '%s' redefines option 'modules' already defined by symbol '%s'",
       current_entry->sym->name, modules_sym->name);
 modules_sym = current_entry->sym;
}
