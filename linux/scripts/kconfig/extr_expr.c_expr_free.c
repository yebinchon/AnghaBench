
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct expr* expr; } ;
struct TYPE_3__ {struct expr* expr; } ;
struct expr {int type; TYPE_2__ right; TYPE_1__ left; } ;
 int fprintf (int ,char*,int) ;
 int free (struct expr*) ;
 int stderr ;

void expr_free(struct expr *e)
{
 if (!e)
  return;

 switch (e->type) {
 case 129:
  break;
 case 131:
  expr_free(e->left.expr);
  break;
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 128:
  break;
 case 130:
 case 137:
  expr_free(e->left.expr);
  expr_free(e->right.expr);
  break;
 default:
  fprintf(stderr, "how to free type %d?\n", e->type);
  break;
 }
 free(e);
}
