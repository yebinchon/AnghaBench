
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tristate ;
struct TYPE_4__ {struct expr* expr; } ;
struct TYPE_3__ {struct expr* expr; } ;
struct expr {scalar_t__ type; TYPE_2__ right; TYPE_1__ left; } ;


 int E_NONE ;
 scalar_t__ E_OR ;
 scalar_t__ expr_calc_value (struct expr*) ;
 int expr_print (struct expr*,void (*) (void*,struct symbol*,char const*),void*,int ) ;

__attribute__((used)) static void expr_print_revdep(struct expr *e,
         void (*fn)(void *, struct symbol *, const char *),
         void *data, tristate pr_type, const char **title)
{
 if (e->type == E_OR) {
  expr_print_revdep(e->left.expr, fn, data, pr_type, title);
  expr_print_revdep(e->right.expr, fn, data, pr_type, title);
 } else if (expr_calc_value(e) == pr_type) {
  if (*title) {
   fn(data, ((void*)0), *title);
   *title = ((void*)0);
  }

  fn(data, ((void*)0), "  - ");
  expr_print(e, fn, data, E_NONE);
  fn(data, ((void*)0), "\n");
 }
}
