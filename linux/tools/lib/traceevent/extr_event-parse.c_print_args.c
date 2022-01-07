
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct trace_seq {int dummy; } ;
struct TYPE_11__ {char* op; struct tep_print_arg* right; struct tep_print_arg* left; } ;
struct TYPE_20__ {char* type; struct tep_print_arg* item; } ;
struct TYPE_19__ {char* bitmask; } ;
struct TYPE_18__ {char* string; } ;
struct TYPE_17__ {struct tep_print_arg* el_size; struct tep_print_arg* count; struct tep_print_arg* field; } ;
struct TYPE_16__ {struct tep_print_arg* size; struct tep_print_arg* field; } ;
struct TYPE_15__ {int symbols; struct tep_print_arg* field; } ;
struct TYPE_14__ {char* delim; int flags; struct tep_print_arg* field; } ;
struct TYPE_13__ {char* name; } ;
struct TYPE_12__ {char* atom; } ;
struct tep_print_arg {int type; struct tep_print_arg* next; TYPE_10__ op; TYPE_9__ typecast; TYPE_8__ bitmask; TYPE_7__ string; TYPE_6__ int_array; TYPE_5__ hex; TYPE_4__ symbol; TYPE_3__ flags; TYPE_2__ field; TYPE_1__ atom; } ;
 int print_fields (struct trace_seq*,int ) ;
 int printf (char*,...) ;
 int strcmp (char*,char*) ;
 int trace_seq_destroy (struct trace_seq*) ;
 int trace_seq_do_printf (struct trace_seq*) ;
 int trace_seq_init (struct trace_seq*) ;

__attribute__((used)) static void print_args(struct tep_print_arg *args)
{
 int print_paren = 1;
 struct trace_seq s;

 switch (args->type) {
 case 132:
  printf("null");
  break;
 case 140:
  printf("%s", args->atom.atom);
  break;
 case 137:
  printf("REC->%s", args->field.name);
  break;
 case 136:
  printf("__print_flags(");
  print_args(args->flags.field);
  printf(", %s, ", args->flags.delim);
  trace_seq_init(&s);
  print_fields(&s, args->flags.flags);
  trace_seq_do_printf(&s);
  trace_seq_destroy(&s);
  printf(")");
  break;
 case 129:
  printf("__print_symbolic(");
  print_args(args->symbol.field);
  printf(", ");
  trace_seq_init(&s);
  print_fields(&s, args->symbol.symbols);
  trace_seq_do_printf(&s);
  trace_seq_destroy(&s);
  printf(")");
  break;
 case 135:
  printf("__print_hex(");
  print_args(args->hex.field);
  printf(", ");
  print_args(args->hex.size);
  printf(")");
  break;
 case 134:
  printf("__print_hex_str(");
  print_args(args->hex.field);
  printf(", ");
  print_args(args->hex.size);
  printf(")");
  break;
 case 133:
  printf("__print_array(");
  print_args(args->int_array.field);
  printf(", ");
  print_args(args->int_array.count);
  printf(", ");
  print_args(args->int_array.el_size);
  printf(")");
  break;
 case 130:
 case 138:
  printf("__get_str(%s)", args->string.string);
  break;
 case 139:
  printf("__get_bitmask(%s)", args->bitmask.bitmask);
  break;
 case 128:
  printf("(%s)", args->typecast.type);
  print_args(args->typecast.item);
  break;
 case 131:
  if (strcmp(args->op.op, ":") == 0)
   print_paren = 0;
  if (print_paren)
   printf("(");
  print_args(args->op.left);
  printf(" %s ", args->op.op);
  print_args(args->op.right);
  if (print_paren)
   printf(")");
  break;
 default:

  return;
 }
 if (args->next) {
  printf("\n");
  print_args(args->next);
 }
}
