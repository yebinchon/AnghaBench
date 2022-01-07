
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * sym; struct expr* expr; } ;
struct TYPE_3__ {struct expr* expr; } ;
struct expr {int type; TYPE_2__ left; TYPE_1__ right; } ;






 struct expr* expr_alloc_and (struct expr*,int ) ;
 int expr_alloc_symbol (int ) ;
 int modules_sym ;
 int symbol_mod ;

__attribute__((used)) static struct expr *rewrite_m(struct expr *e)
{
 if (!e)
  return e;

 switch (e->type) {
 case 130:
  e->left.expr = rewrite_m(e->left.expr);
  break;
 case 129:
 case 131:
  e->left.expr = rewrite_m(e->left.expr);
  e->right.expr = rewrite_m(e->right.expr);
  break;
 case 128:

  if (e->left.sym == &symbol_mod)
   return expr_alloc_and(e, expr_alloc_symbol(modules_sym));
  break;
 default:
  break;
 }
 return e;
}
