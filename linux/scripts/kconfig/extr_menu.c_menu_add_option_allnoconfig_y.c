
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sym; } ;
struct TYPE_3__ {int flags; } ;


 int SYMBOL_ALLNOCONFIG_Y ;
 TYPE_2__* current_entry ;

void menu_add_option_allnoconfig_y(void)
{
 current_entry->sym->flags |= SYMBOL_ALLNOCONFIG_Y;
}
