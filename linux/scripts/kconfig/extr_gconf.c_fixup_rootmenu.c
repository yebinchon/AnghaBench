
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct menu {TYPE_1__* prompt; struct menu* next; struct menu* list; int flags; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int MENU_ROOT ;
 scalar_t__ P_MENU ;

__attribute__((used)) static void fixup_rootmenu(struct menu *menu)
{
 struct menu *child;
 static int menu_cnt = 0;

 menu->flags |= MENU_ROOT;
 for (child = menu->list; child; child = child->next) {
  if (child->prompt && child->prompt->type == P_MENU) {
   menu_cnt++;
   fixup_rootmenu(child);
   menu_cnt--;
  } else if (!menu_cnt)
   fixup_rootmenu(child);
 }
}
