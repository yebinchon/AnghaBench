
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union string_value {scalar_t__ u; scalar_t__ s; } ;
typedef int tristate ;
struct TYPE_8__ {TYPE_4__* sym; struct expr* expr; } ;
struct TYPE_7__ {TYPE_4__* sym; struct expr* expr; } ;
struct expr {int type; TYPE_3__ right; TYPE_2__ left; } ;
typedef enum string_value_kind { ____Placeholder_string_value_kind } string_value_kind ;
struct TYPE_6__ {int tri; } ;
struct TYPE_9__ {int type; TYPE_1__ curr; } ;


 int EXPR_AND (int ,int ) ;
 int EXPR_NOT (int ) ;
 int EXPR_OR (int ,int ) ;
 int S_STRING ;
 int expr_parse_string (char const*,int ,union string_value*) ;
 int k_string ;
 int k_unsigned ;
 int no ;
 int printf (char*,int) ;
 int strcmp (char const*,char const*) ;
 int sym_calc_value (TYPE_4__*) ;
 char* sym_get_string_value (TYPE_4__*) ;
 int yes ;

tristate expr_calc_value(struct expr *e)
{
 tristate val1, val2;
 const char *str1, *str2;
 enum string_value_kind k1 = k_string, k2 = k_string;
 union string_value lval = {}, rval = {};
 int res;

 if (!e)
  return yes;

 switch (e->type) {
 case 129:
  sym_calc_value(e->left.sym);
  return e->left.sym->curr.tri;
 case 137:
  val1 = expr_calc_value(e->left.expr);
  val2 = expr_calc_value(e->right.expr);
  return EXPR_AND(val1, val2);
 case 130:
  val1 = expr_calc_value(e->left.expr);
  val2 = expr_calc_value(e->right.expr);
  return EXPR_OR(val1, val2);
 case 131:
  val1 = expr_calc_value(e->left.expr);
  return EXPR_NOT(val1);
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 128:
  break;
 default:
  printf("expr_calc_value: %d?\n", e->type);
  return no;
 }

 sym_calc_value(e->left.sym);
 sym_calc_value(e->right.sym);
 str1 = sym_get_string_value(e->left.sym);
 str2 = sym_get_string_value(e->right.sym);

 if (e->left.sym->type != S_STRING || e->right.sym->type != S_STRING) {
  k1 = expr_parse_string(str1, e->left.sym->type, &lval);
  k2 = expr_parse_string(str2, e->right.sym->type, &rval);
 }

 if (k1 == k_string || k2 == k_string)
  res = strcmp(str1, str2);
 else if (k1 == k_unsigned || k2 == k_unsigned)
  res = (lval.u > rval.u) - (lval.u < rval.u);
 else
  res = (lval.s > rval.s) - (lval.s < rval.s);

 switch(e->type) {
 case 136:
  return res ? no : yes;
 case 135:
  return res >= 0 ? yes : no;
 case 134:
  return res > 0 ? yes : no;
 case 133:
  return res <= 0 ? yes : no;
 case 132:
  return res < 0 ? yes : no;
 case 128:
  return res ? yes : no;
 default:
  printf("expr_calc_value: relation %d?\n", e->type);
  return no;
 }
}
