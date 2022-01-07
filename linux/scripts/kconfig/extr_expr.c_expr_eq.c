
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sym; struct expr* expr; } ;
struct TYPE_3__ {int sym; } ;
struct expr {int type; TYPE_2__ left; TYPE_1__ right; } ;


 scalar_t__ DEBUG_EXPR ;
 struct expr* expr_copy (struct expr*) ;
 int expr_eliminate_eq (struct expr**,struct expr**) ;
 int expr_fprint (struct expr*,int ) ;
 int expr_free (struct expr*) ;
 int printf (char*) ;
 int stdout ;
 int trans_count ;

__attribute__((used)) static int expr_eq(struct expr *e1, struct expr *e2)
{
 int res, old_count;

 if (e1->type != e2->type)
  return 0;
 switch (e1->type) {
 case 139:
 case 138:
 case 137:
 case 136:
 case 134:
 case 128:
  return e1->left.sym == e2->left.sym && e1->right.sym == e2->right.sym;
 case 129:
  return e1->left.sym == e2->left.sym;
 case 132:
  return expr_eq(e1->left.expr, e2->left.expr);
 case 140:
 case 131:
  e1 = expr_copy(e1);
  e2 = expr_copy(e2);
  old_count = trans_count;
  expr_eliminate_eq(&e1, &e2);
  res = (e1->type == 129 && e2->type == 129 &&
         e1->left.sym == e2->left.sym);
  expr_free(e1);
  expr_free(e2);
  trans_count = old_count;
  return res;
 case 135:
 case 130:
 case 133:
             ;
 }

 if (DEBUG_EXPR) {
  expr_fprint(e1, stdout);
  printf(" = ");
  expr_fprint(e2, stdout);
  printf(" ?\n");
 }

 return 0;
}
