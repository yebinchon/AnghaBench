
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct tep_filter_arg* left; struct tep_filter_arg* right; } ;
struct tep_filter_arg {scalar_t__ type; TYPE_1__ op; } ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;


 int TEP_ERRNO__REPARENT_FAILED ;
 int TEP_ERRNO__REPARENT_NOT_OP ;
 scalar_t__ TEP_FILTER_ARG_OP ;
 int free (struct tep_filter_arg*) ;
 int free_arg (struct tep_filter_arg*) ;
 int show_error (char*,char*) ;

__attribute__((used)) static enum tep_errno
reparent_op_arg(struct tep_filter_arg *parent, struct tep_filter_arg *old_child,
  struct tep_filter_arg *arg, char *error_str)
{
 struct tep_filter_arg *other_child;
 struct tep_filter_arg **ptr;

 if (parent->type != TEP_FILTER_ARG_OP &&
     arg->type != TEP_FILTER_ARG_OP) {
  show_error(error_str, "can not reparent other than OP");
  return TEP_ERRNO__REPARENT_NOT_OP;
 }


 if (old_child->op.right == arg) {
  ptr = &old_child->op.right;
  other_child = old_child->op.left;
 } else if (old_child->op.left == arg) {
  ptr = &old_child->op.left;
  other_child = old_child->op.right;
 } else {
  show_error(error_str, "Error in reparent op, find other child");
  return TEP_ERRNO__REPARENT_FAILED;
 }


 *ptr = ((void*)0);


 if (parent == old_child) {
  free_arg(other_child);
  *parent = *arg;

  free(arg);
  return 0;
 }

 if (parent->op.right == old_child)
  ptr = &parent->op.right;
 else if (parent->op.left == old_child)
  ptr = &parent->op.left;
 else {
  show_error(error_str, "Error in reparent op");
  return TEP_ERRNO__REPARENT_FAILED;
 }

 *ptr = arg;

 free_arg(old_child);
 return 0;
}
