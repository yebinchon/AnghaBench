
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_field {int operator; struct hist_field** operands; } ;




 int FIELD_OP_UNARY_MINUS ;
 int GFP_KERNEL ;
 int MAX_FILTER_STR_VAL ;
 int expr_field_str (struct hist_field*,char*) ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int strcat (char*,char*) ;

__attribute__((used)) static char *expr_str(struct hist_field *field, unsigned int level)
{
 char *expr;

 if (level > 1)
  return ((void*)0);

 expr = kzalloc(MAX_FILTER_STR_VAL, GFP_KERNEL);
 if (!expr)
  return ((void*)0);

 if (!field->operands[0]) {
  expr_field_str(field, expr);
  return expr;
 }

 if (field->operator == FIELD_OP_UNARY_MINUS) {
  char *subexpr;

  strcat(expr, "-(");
  subexpr = expr_str(field->operands[0], ++level);
  if (!subexpr) {
   kfree(expr);
   return ((void*)0);
  }
  strcat(expr, subexpr);
  strcat(expr, ")");

  kfree(subexpr);

  return expr;
 }

 expr_field_str(field->operands[0], expr);

 switch (field->operator) {
 case 129:
  strcat(expr, "-");
  break;
 case 128:
  strcat(expr, "+");
  break;
 default:
  kfree(expr);
  return ((void*)0);
 }

 expr_field_str(field->operands[1], expr);

 return expr;
}
