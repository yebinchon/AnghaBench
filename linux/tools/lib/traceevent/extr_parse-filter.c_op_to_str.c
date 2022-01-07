
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int right; int left; } ;
struct tep_filter_arg {TYPE_1__ op; } ;
struct tep_event_filter {int dummy; } ;





 char* arg_to_str (struct tep_event_filter*,int ) ;
 int asprintf (char**,char*,...) ;
 int free (char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static char *op_to_str(struct tep_event_filter *filter, struct tep_filter_arg *arg)
{
 char *str = ((void*)0);
 char *left = ((void*)0);
 char *right = ((void*)0);
 char *op = ((void*)0);
 int left_val = -1;
 int right_val = -1;
 int val;

 switch (arg->op.type) {
 case 130:
  op = "&&";

 case 128:
  if (!op)
   op = "||";

  left = arg_to_str(filter, arg->op.left);
  right = arg_to_str(filter, arg->op.right);
  if (!left || !right)
   break;


  if (strcmp(left, "TRUE") == 0)
   left_val = 1;
  else if (strcmp(left, "FALSE") == 0)
   left_val = 0;

  if (strcmp(right, "TRUE") == 0)
   right_val = 1;
  else if (strcmp(right, "FALSE") == 0)
   right_val = 0;

  if (left_val >= 0) {
   if ((arg->op.type == 130 && !left_val) ||
       (arg->op.type == 128 && left_val)) {

    str = left;
    left = ((void*)0);
    break;
   }
   if (right_val >= 0) {

    val = 0;
    switch (arg->op.type) {
    case 130:
     val = left_val && right_val;
     break;
    case 128:
     val = left_val || right_val;
     break;
    default:
     break;
    }
    asprintf(&str, val ? "TRUE" : "FALSE");
    break;
   }
  }
  if (right_val >= 0) {
   if ((arg->op.type == 130 && !right_val) ||
       (arg->op.type == 128 && right_val)) {

    str = right;
    right = ((void*)0);
    break;
   }

   str = left;
   left = ((void*)0);
   break;
  }

  asprintf(&str, "(%s) %s (%s)", left, op, right);
  break;

 case 129:
  op = "!";
  right = arg_to_str(filter, arg->op.right);
  if (!right)
   break;


  if (strcmp(right, "TRUE") == 0)
   right_val = 1;
  else if (strcmp(right, "FALSE") == 0)
   right_val = 0;
  if (right_val >= 0) {

   asprintf(&str, right_val ? "FALSE" : "TRUE");
   break;
  }
  asprintf(&str, "%s(%s)", op, right);
  break;

 default:

  break;
 }
 free(left);
 free(right);
 return str;
}
