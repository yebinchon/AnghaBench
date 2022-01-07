
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sym; } ;
struct TYPE_3__ {int flags; } ;


 int SYMBOL_NO_WRITE ;
 TYPE_2__* current_entry ;
 TYPE_1__* sym_defconfig_list ;
 int zconf_error (char*) ;

void menu_add_option_defconfig_list(void)
{
 if (!sym_defconfig_list)
  sym_defconfig_list = current_entry->sym;
 else if (sym_defconfig_list != current_entry->sym)
  zconf_error("trying to redefine defconfig symbol");
 sym_defconfig_list->flags |= SYMBOL_NO_WRITE;
}
