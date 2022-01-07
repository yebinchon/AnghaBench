
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {struct tep_filter_arg* right; struct tep_filter_arg* left; } ;
struct TYPE_9__ {struct tep_filter_arg* str; int type; } ;
struct TYPE_8__ {struct tep_filter_arg* buffer; int reg; struct tep_filter_arg* val; } ;
struct TYPE_7__ {struct tep_filter_arg* right; struct tep_filter_arg* left; } ;
struct TYPE_6__ {struct tep_filter_arg* right; struct tep_filter_arg* left; } ;
struct tep_filter_arg {int type; TYPE_5__ op; TYPE_4__ value; TYPE_3__ str; TYPE_2__ exp; TYPE_1__ num; } ;
 int TEP_FILTER_CHAR ;
 int TEP_FILTER_STRING ;
 int free (struct tep_filter_arg*) ;
 int regfree (int *) ;

__attribute__((used)) static void free_arg(struct tep_filter_arg *arg)
{
 if (!arg)
  return;

 switch (arg->type) {
 case 132:
 case 134:
  break;

 case 131:
  free_arg(arg->num.left);
  free_arg(arg->num.right);
  break;

 case 133:
  free_arg(arg->exp.left);
  free_arg(arg->exp.right);
  break;

 case 129:
  free(arg->str.val);
  regfree(&arg->str.reg);
  free(arg->str.buffer);
  break;

 case 128:
  if (arg->value.type == TEP_FILTER_STRING ||
      arg->value.type == TEP_FILTER_CHAR)
   free(arg->value.str);
  break;

 case 130:
  free_arg(arg->op.left);
  free_arg(arg->op.right);
 default:
  break;
 }

 free(arg);
}
