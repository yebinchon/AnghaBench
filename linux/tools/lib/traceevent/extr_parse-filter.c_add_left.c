
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct tep_filter_arg* left; } ;
struct TYPE_6__ {struct tep_filter_arg* left; } ;
struct TYPE_5__ {struct tep_filter_arg* left; } ;
struct tep_filter_arg {int type; TYPE_1__ num; TYPE_3__ op; TYPE_2__ exp; } ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;


 int TEP_ERRNO__INVALID_ARG_TYPE ;
 int const TEP_FILTER_ARG_BOOLEAN ;

 int const TEP_FILTER_ARG_FIELD ;


 struct tep_filter_arg* rotate_op_right (struct tep_filter_arg*,struct tep_filter_arg*) ;

__attribute__((used)) static enum tep_errno add_left(struct tep_filter_arg *op, struct tep_filter_arg *arg)
{
 switch (op->type) {
 case 130:
  if (arg->type == 128)
   arg = rotate_op_right(arg, op);
  op->exp.left = arg;
  break;

 case 128:
  op->op.left = arg;
  break;
 case 129:
  if (arg->type == 128)
   arg = rotate_op_right(arg, op);


  if (arg->type != TEP_FILTER_ARG_FIELD &&
      arg->type != TEP_FILTER_ARG_BOOLEAN)
   return TEP_ERRNO__INVALID_ARG_TYPE;
  op->num.left = arg;
  break;
 default:
  return TEP_ERRNO__INVALID_ARG_TYPE;
 }
 return 0;
}
