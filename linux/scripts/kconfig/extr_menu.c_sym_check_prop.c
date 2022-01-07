
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct symbol {int type; int name; struct property* prop; } ;
struct property {int type; TYPE_3__* expr; struct property* next; } ;
struct TYPE_5__ {struct symbol* sym; } ;
struct TYPE_4__ {struct symbol* sym; } ;
struct TYPE_6__ {TYPE_2__ right; TYPE_1__ left; int type; } ;


 int E_SYMBOL ;




 int S_BOOLEAN ;
 int S_HEX ;
 int S_INT ;
 int S_STRING ;
 int S_TRISTATE ;
 int S_UNKNOWN ;
 int menu_validate_number (struct symbol*,struct symbol*) ;
 struct symbol* prop_get_symbol (struct property*) ;
 int prop_warn (struct property*,char*,...) ;
 struct property* sym_get_choice_prop (struct symbol*) ;
 int sym_is_choice (struct symbol*) ;

__attribute__((used)) static void sym_check_prop(struct symbol *sym)
{
 struct property *prop;
 struct symbol *sym2;
 char *use;

 for (prop = sym->prop; prop; prop = prop->next) {
  switch (prop->type) {
  case 131:
   if ((sym->type == S_STRING || sym->type == S_INT || sym->type == S_HEX) &&
       prop->expr->type != E_SYMBOL)
    prop_warn(prop,
        "default for config symbol '%s'"
        " must be a single symbol", sym->name);
   if (prop->expr->type != E_SYMBOL)
    break;
   sym2 = prop_get_symbol(prop);
   if (sym->type == S_HEX || sym->type == S_INT) {
    if (!menu_validate_number(sym, sym2))
     prop_warn(prop,
         "'%s': number is invalid",
         sym->name);
   }
   if (sym_is_choice(sym)) {
    struct property *choice_prop =
     sym_get_choice_prop(sym2);

    if (!choice_prop ||
        prop_get_symbol(choice_prop) != sym)
     prop_warn(prop,
        "choice default symbol '%s' is not contained in the choice",
        sym2->name);
   }
   break;
  case 128:
  case 130:
   use = prop->type == 128 ? "select" : "imply";
   sym2 = prop_get_symbol(prop);
   if (sym->type != S_BOOLEAN && sym->type != S_TRISTATE)
    prop_warn(prop,
        "config symbol '%s' uses %s, but is "
        "not bool or tristate", sym->name, use);
   else if (sym2->type != S_UNKNOWN &&
     sym2->type != S_BOOLEAN &&
     sym2->type != S_TRISTATE)
    prop_warn(prop,
        "'%s' has wrong type. '%s' only "
        "accept arguments of bool and "
        "tristate type", sym2->name, use);
   break;
  case 129:
   if (sym->type != S_INT && sym->type != S_HEX)
    prop_warn(prop, "range is only allowed "
      "for int or hex symbols");
   if (!menu_validate_number(sym, prop->expr->left.sym) ||
       !menu_validate_number(sym, prop->expr->right.sym))
    prop_warn(prop, "range is invalid");
   break;
  default:
   ;
  }
 }
}
