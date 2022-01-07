
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


struct TYPE_16__ {struct tep_print_arg* right; struct tep_print_arg* left; int op; } ;
struct TYPE_15__ {struct tep_print_arg* item; } ;
struct TYPE_14__ {struct tep_print_arg* el_size; struct tep_print_arg* count; struct tep_print_arg* field; } ;
struct TYPE_13__ {struct tep_print_arg* size; struct tep_print_arg* field; } ;
struct TYPE_12__ {int symbols; struct tep_print_arg* field; } ;
struct TYPE_11__ {int flags; int delim; struct tep_print_arg* field; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {int atom; } ;
struct tep_print_arg {int type; struct tep_print_arg* next; TYPE_8__ op; TYPE_7__ typecast; TYPE_6__ int_array; TYPE_5__ hex; TYPE_4__ symbol; TYPE_3__ flags; TYPE_2__ field; TYPE_1__ atom; } ;
struct tep_event {int dummy; } ;
 int cur_field_name ;
 int define_flag_field (char const*,int ,int ) ;
 int define_flag_value (char const*,int ,char*,int ) ;
 int define_flag_values (int ,char const*,int ) ;
 int define_symbolic_field (char const*,int ) ;
 int define_symbolic_values (int ,char const*,int ) ;
 int free (int ) ;
 int pr_err (char*) ;
 int strcmp (int ,char*) ;
 int strdup (int ) ;
 int zero_flag_atom ;

__attribute__((used)) static void define_event_symbols(struct tep_event *event,
     const char *ev_name,
     struct tep_print_arg *args)
{
 if (args == ((void*)0))
  return;

 switch (args->type) {
 case 132:
  break;
 case 143:
  define_flag_value(ev_name, cur_field_name, "0",
      args->atom.atom);
  zero_flag_atom = 0;
  break;
 case 138:
  free(cur_field_name);
  cur_field_name = strdup(args->field.name);
  break;
 case 137:
  define_event_symbols(event, ev_name, args->flags.field);
  define_flag_field(ev_name, cur_field_name, args->flags.delim);
  define_flag_values(args->flags.flags, ev_name, cur_field_name);
  break;
 case 129:
  define_event_symbols(event, ev_name, args->symbol.field);
  define_symbolic_field(ev_name, cur_field_name);
  define_symbolic_values(args->symbol.symbols, ev_name,
           cur_field_name);
  break;
 case 135:
 case 134:
  define_event_symbols(event, ev_name, args->hex.field);
  define_event_symbols(event, ev_name, args->hex.size);
  break;
 case 133:
  define_event_symbols(event, ev_name, args->int_array.field);
  define_event_symbols(event, ev_name, args->int_array.count);
  define_event_symbols(event, ev_name, args->int_array.el_size);
  break;
 case 141:
 case 140:
 case 139:
 case 130:
 case 142:
  break;
 case 128:
  define_event_symbols(event, ev_name, args->typecast.item);
  break;
 case 131:
  if (strcmp(args->op.op, ":") == 0)
   zero_flag_atom = 1;
  define_event_symbols(event, ev_name, args->op.left);
  define_event_symbols(event, ev_name, args->op.right);
  break;
 case 136:
 default:
  pr_err("Unsupported print arg type\n");

  return;
 }

 if (args->next)
  define_event_symbols(event, ev_name, args->next);
}
