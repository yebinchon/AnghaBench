
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct expr* expr; } ;
struct TYPE_3__ {struct expr* expr; } ;
struct expr {int type; TYPE_2__ right; TYPE_1__ left; } ;
typedef enum expr_type { ____Placeholder_expr_type } expr_type ;




 struct expr* e1 ;
 struct expr* e2 ;
 struct expr* expr_alloc_symbol (int *) ;
 int expr_free (struct expr*) ;
 struct expr* expr_join_and (struct expr*,struct expr*) ;
 struct expr* expr_join_or (struct expr*,struct expr*) ;
 int symbol_no ;
 int symbol_yes ;
 int trans_count ;

__attribute__((used)) static void expr_eliminate_dups1(enum expr_type type, struct expr **ep1, struct expr **ep2)
{


 struct expr *tmp;



 if ((*ep1)->type == type) {
  expr_eliminate_dups1(type, &(*ep1)->left.expr, &(*ep2));
  expr_eliminate_dups1(type, &(*ep1)->right.expr, &(*ep2));
  return;
 }
 if ((*ep2)->type == type) {
  expr_eliminate_dups1(type, &(*ep1), &(*ep2)->left.expr);
  expr_eliminate_dups1(type, &(*ep1), &(*ep2)->right.expr);
  return;
 }



 if ((*ep1) == (*ep2))
  return;

 switch ((*ep1)->type) {
 case 128: case 129:
  expr_eliminate_dups1((*ep1)->type, &(*ep1), &(*ep1));
 default:
  ;
 }

 switch (type) {
 case 128:
  tmp = expr_join_or((*ep1), (*ep2));
  if (tmp) {
   expr_free((*ep1)); expr_free((*ep2));
   (*ep1) = expr_alloc_symbol(&symbol_no);
   (*ep2) = tmp;
   trans_count++;
  }
  break;
 case 129:
  tmp = expr_join_and((*ep1), (*ep2));
  if (tmp) {
   expr_free((*ep1)); expr_free((*ep2));
   (*ep1) = expr_alloc_symbol(&symbol_yes);
   (*ep2) = tmp;
   trans_count++;
  }
  break;
 default:
  ;
 }


}
