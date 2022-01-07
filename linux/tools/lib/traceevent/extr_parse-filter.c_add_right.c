
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int type; struct tep_filter_arg* right; struct tep_filter_arg* left; } ;
struct TYPE_15__ {int type; TYPE_6__* field; int * buffer; int val; int reg; } ;
struct TYPE_13__ {TYPE_6__* field; } ;
struct TYPE_12__ {int value; } ;
struct TYPE_11__ {int type; char* str; } ;
struct TYPE_10__ {struct tep_filter_arg* right; } ;
struct TYPE_9__ {struct tep_filter_arg* right; } ;
struct tep_filter_arg {int type; TYPE_8__ num; TYPE_7__ str; TYPE_5__ field; TYPE_4__ boolean; TYPE_3__ value; TYPE_2__ op; TYPE_1__ exp; } ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;
struct TYPE_14__ {size_t size; } ;


 int REG_ICASE ;
 int REG_NOSUB ;
 int TEP_ERRNO__ILLEGAL_INTEGER_CMP ;
 int TEP_ERRNO__ILLEGAL_LVALUE ;
 int TEP_ERRNO__ILLEGAL_RVALUE ;
 int TEP_ERRNO__ILLEGAL_STRING_CMP ;
 int TEP_ERRNO__INVALID_REGEX ;
 int TEP_ERRNO__MEM_ALLOC_FAILED ;
 int TEP_ERRNO__SYNTAX_ERROR ;
 int TEP_FILTER_ARG_BOOLEAN ;




 int const TEP_FILTER_ARG_STR ;



 int TEP_FILTER_CMP_MATCH ;

 int TEP_FILTER_CMP_NOT_MATCH ;


 int TEP_FILTER_FALSE ;


 int free_arg (struct tep_filter_arg*) ;
 int * malloc (int ) ;
 int memset (struct tep_filter_arg*,int ,int) ;
 int regcomp (int *,char*,int) ;
 int show_error (char*,char*,...) ;
 int strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static enum tep_errno
add_right(struct tep_filter_arg *op, struct tep_filter_arg *arg, char *error_str)
{
 struct tep_filter_arg *left;
 char *str;
 int op_type;
 int ret;

 switch (op->type) {
 case 139:
  if (op->exp.right)
   goto out_fail;
  op->exp.right = arg;
  break;

 case 136:
  if (op->op.right)
   goto out_fail;
  op->op.right = arg;
  break;

 case 137:
  if (op->op.right)
   goto out_fail;



  switch (arg->type) {
  case 135:
  case 138:
   break;
  default:
   show_error(error_str, "Illegal rvalue");
   return TEP_ERRNO__ILLEGAL_RVALUE;
  }





  switch (arg->value.type) {
  case 134:





   if (strlen(arg->value.str) == 1 &&
       op->num.type != 130 &&
       op->num.type != 131) {
    arg->value.type = 129;
    goto do_int;
   }

  case 128:


   op_type = op->num.type;
   left = op->num.left;
   str = arg->value.str;


   memset(op, 0, sizeof(*op));





   if (left->type == TEP_FILTER_ARG_BOOLEAN) {
    free_arg(left);
    free_arg(arg);
    op->type = TEP_FILTER_ARG_BOOLEAN;
    op->boolean.value = TEP_FILTER_FALSE;
    break;
   }


   if (left->type != 138) {
    show_error(error_str,
        "Illegal lvalue for string comparison");
    return TEP_ERRNO__ILLEGAL_LVALUE;
   }


   switch (op_type) {
   case 133:
    op_type = TEP_FILTER_CMP_MATCH;
    break;
   case 132:
    op_type = TEP_FILTER_CMP_NOT_MATCH;
    break;

   case 130:
   case 131:
    ret = regcomp(&op->str.reg, str, REG_ICASE|REG_NOSUB);
    if (ret) {
     show_error(error_str,
         "RegEx '%s' did not compute",
         str);
     return TEP_ERRNO__INVALID_REGEX;
    }
    break;
   default:
    show_error(error_str,
        "Illegal comparison for string");
    return TEP_ERRNO__ILLEGAL_STRING_CMP;
   }

   op->type = TEP_FILTER_ARG_STR;
   op->str.type = op_type;
   op->str.field = left->field.field;
   op->str.val = strdup(str);
   if (!op->str.val) {
    show_error(error_str, "Failed to allocate string filter");
    return TEP_ERRNO__MEM_ALLOC_FAILED;
   }



   op->str.buffer = malloc(op->str.field->size + 1);
   if (!op->str.buffer) {
    show_error(error_str, "Failed to allocate string filter");
    return TEP_ERRNO__MEM_ALLOC_FAILED;
   }

   op->str.buffer[op->str.field->size] = 0;


   free_arg(arg);
   free_arg(left);

   break;

  case 129:

 do_int:
   switch (op->num.type) {
   case 130:
   case 131:
    show_error(error_str,
        "Op not allowed with integers");
    return TEP_ERRNO__ILLEGAL_INTEGER_CMP;

   default:
    break;
   }


   op->num.right = arg;
   break;
  default:
   goto out_fail;
  }
  break;
 default:
  goto out_fail;
 }

 return 0;

 out_fail:
 show_error(error_str, "Syntax error");
 return TEP_ERRNO__SYNTAX_ERROR;
}
