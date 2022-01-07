
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_15__ {struct tep_print_arg* args; } ;
struct TYPE_14__ {struct tep_print_arg* right; struct tep_print_arg* left; struct tep_print_arg* op; } ;
struct TYPE_13__ {struct tep_print_arg* index; } ;
struct TYPE_24__ {struct tep_print_arg* bitmask; } ;
struct TYPE_23__ {struct tep_print_arg* string; } ;
struct TYPE_22__ {struct tep_print_arg* item; struct tep_print_arg* type; } ;
struct TYPE_21__ {struct tep_print_arg* el_size; struct tep_print_arg* count; struct tep_print_arg* field; } ;
struct TYPE_20__ {struct tep_print_arg* size; struct tep_print_arg* field; } ;
struct TYPE_19__ {int symbols; struct tep_print_arg* field; } ;
struct TYPE_18__ {int flags; struct tep_print_arg* delim; struct tep_print_arg* field; } ;
struct TYPE_17__ {struct tep_print_arg* name; } ;
struct TYPE_16__ {struct tep_print_arg* atom; } ;
struct tep_print_arg {int type; struct tep_print_arg* next; TYPE_12__ func; TYPE_11__ op; TYPE_10__ dynarray; TYPE_9__ bitmask; TYPE_8__ string; TYPE_7__ typecast; TYPE_6__ int_array; TYPE_5__ hex; TYPE_4__ symbol; TYPE_3__ flags; TYPE_2__ field; TYPE_1__ atom; } ;
 int free (struct tep_print_arg*) ;
 int free_flag_sym (int ) ;

__attribute__((used)) static void free_arg(struct tep_print_arg *arg)
{
 struct tep_print_arg *farg;

 if (!arg)
  return;

 switch (arg->type) {
 case 143:
  free(arg->atom.atom);
  break;
 case 138:
  free(arg->field.name);
  break;
 case 137:
  free_arg(arg->flags.field);
  free(arg->flags.delim);
  free_flag_sym(arg->flags.flags);
  break;
 case 129:
  free_arg(arg->symbol.field);
  free_flag_sym(arg->symbol.symbols);
  break;
 case 135:
 case 134:
  free_arg(arg->hex.field);
  free_arg(arg->hex.size);
  break;
 case 133:
  free_arg(arg->int_array.field);
  free_arg(arg->int_array.count);
  free_arg(arg->int_array.el_size);
  break;
 case 128:
  free(arg->typecast.type);
  free_arg(arg->typecast.item);
  break;
 case 130:
 case 141:
  free(arg->string.string);
  break;
 case 142:
  free(arg->bitmask.bitmask);
  break;
 case 140:
 case 139:
  free(arg->dynarray.index);
  break;
 case 131:
  free(arg->op.op);
  free_arg(arg->op.left);
  free_arg(arg->op.right);
  break;
 case 136:
  while (arg->func.args) {
   farg = arg->func.args;
   arg->func.args = farg->next;
   free_arg(farg);
  }
  break;

 case 132:
 default:
  break;
 }

 free(arg);
}
