
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {struct tep_filter_arg* left; int type; struct tep_filter_arg* right; } ;
struct TYPE_7__ {struct tep_filter_arg* right; struct tep_filter_arg* left; } ;
struct TYPE_6__ {struct tep_filter_arg* right; struct tep_filter_arg* left; } ;
struct TYPE_5__ {int value; } ;
struct tep_filter_arg {int type; TYPE_4__ op; TYPE_3__ num; TYPE_2__ exp; TYPE_1__ boolean; } ;





 int TEP_ERRNO__BAD_FILTER_ARG ;







 int TEP_FILTER_OP_AND ;
 int TEP_FILTER_OP_NOT ;
 int TEP_FILTER_OP_OR ;
 int reparent_op_arg (struct tep_filter_arg*,struct tep_filter_arg*,struct tep_filter_arg*,char*) ;
 int show_error (char*,char*) ;

__attribute__((used)) static int test_arg(struct tep_filter_arg *parent, struct tep_filter_arg *arg,
      char *error_str)
{
 int lval, rval;

 switch (arg->type) {


 case 134:
  return 137 + arg->boolean.value;


 case 129:
 case 128:
 case 132:
  return 136;

 case 133:
  lval = test_arg(arg, arg->exp.left, error_str);
  if (lval != 136)
   return lval;
  rval = test_arg(arg, arg->exp.right, error_str);
  if (rval != 136)
   return rval;
  return 136;

 case 131:
  lval = test_arg(arg, arg->num.left, error_str);
  if (lval != 136)
   return lval;
  rval = test_arg(arg, arg->num.right, error_str);
  if (rval != 136)
   return rval;
  return 136;

 case 130:
  if (arg->op.type != TEP_FILTER_OP_NOT) {
   lval = test_arg(arg, arg->op.left, error_str);
   switch (lval) {
   case 136:
    break;
   case 135:
    if (arg->op.type == TEP_FILTER_OP_OR)
     return 135;
    rval = test_arg(arg, arg->op.right, error_str);
    if (rval != 136)
     return rval;

    return reparent_op_arg(parent, arg, arg->op.right,
             error_str);

   case 137:
    if (arg->op.type == TEP_FILTER_OP_AND)
     return 137;
    rval = test_arg(arg, arg->op.right, error_str);
    if (rval != 136)
     return rval;

    return reparent_op_arg(parent, arg, arg->op.right,
             error_str);

   default:
    return lval;
   }
  }

  rval = test_arg(arg, arg->op.right, error_str);
  switch (rval) {
  case 136:
  default:
   break;

  case 135:
   if (arg->op.type == TEP_FILTER_OP_OR)
    return 135;
   if (arg->op.type == TEP_FILTER_OP_NOT)
    return 137;

   return reparent_op_arg(parent, arg, arg->op.left,
            error_str);

  case 137:
   if (arg->op.type == TEP_FILTER_OP_AND)
    return 137;
   if (arg->op.type == TEP_FILTER_OP_NOT)
    return 135;

   return reparent_op_arg(parent, arg, arg->op.left,
            error_str);
  }

  return rval;
 default:
  show_error(error_str, "bad arg in filter tree");
  return TEP_ERRNO__BAD_FILTER_ARG;
 }
 return 136;
}
