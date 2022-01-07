
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constraint_expr {struct constraint_expr* type_names; int negset; int types; int names; } ;


 int ebitmap_destroy (int *) ;
 int kfree (struct constraint_expr*) ;

__attribute__((used)) static void constraint_expr_destroy(struct constraint_expr *expr)
{
 if (expr) {
  ebitmap_destroy(&expr->names);
  if (expr->type_names) {
   ebitmap_destroy(&expr->type_names->types);
   ebitmap_destroy(&expr->type_names->negset);
   kfree(expr->type_names);
  }
  kfree(expr);
 }
}
