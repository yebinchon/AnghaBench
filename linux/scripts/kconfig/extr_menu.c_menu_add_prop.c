
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct expr* expr; } ;
struct property {char* text; TYPE_1__ visible; struct expr* expr; struct menu* menu; } ;
struct menu {struct property* prompt; int visibility; struct menu* parent; int sym; } ;
struct expr {int dummy; } ;
typedef enum prop_type { ____Placeholder_prop_type } prop_type ;


 int P_PROMPT ;
 struct menu* current_entry ;
 struct expr* expr_alloc_and (struct expr*,struct expr*) ;
 struct expr* expr_copy (int ) ;
 scalar_t__ isspace (char) ;
 struct property* prop_alloc (int,int ) ;
 int prop_warn (struct property*,char*) ;
 struct menu rootmenu ;

__attribute__((used)) static struct property *menu_add_prop(enum prop_type type, char *prompt, struct expr *expr, struct expr *dep)
{
 struct property *prop = prop_alloc(type, current_entry->sym);

 prop->menu = current_entry;
 prop->expr = expr;
 prop->visible.expr = dep;

 if (prompt) {
  if (isspace(*prompt)) {
   prop_warn(prop, "leading whitespace ignored");
   while (isspace(*prompt))
    prompt++;
  }
  if (current_entry->prompt && current_entry != &rootmenu)
   prop_warn(prop, "prompt redefined");


  if(type == P_PROMPT) {
   struct menu *menu = current_entry;

   while ((menu = menu->parent) != ((void*)0)) {
    struct expr *dup_expr;

    if (!menu->visibility)
     continue;
    dup_expr = expr_copy(menu->visibility);

    prop->visible.expr
     = expr_alloc_and(prop->visible.expr,
        dup_expr);
   }
  }

  current_entry->prompt = prop;
 }
 prop->text = prompt;

 return prop;
}
