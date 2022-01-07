
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tep_format_field {int dummy; } ;
struct TYPE_6__ {struct tep_format_field* field; } ;
struct TYPE_5__ {int value; } ;
struct TYPE_4__ {int val; int type; int str; } ;
struct tep_filter_arg {TYPE_3__ field; void* type; TYPE_2__ boolean; TYPE_1__ value; } ;
struct tep_event {int dummy; } ;
typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;


 int COMM ;
 int CPU ;
 int TEP_ERRNO__MEM_ALLOC_FAILED ;
 int TEP_ERRNO__UNEXPECTED_TYPE ;



 void* TEP_FILTER_ARG_BOOLEAN ;
 void* TEP_FILTER_ARG_FIELD ;
 void* TEP_FILTER_ARG_VALUE ;
 int TEP_FILTER_CHAR ;
 int TEP_FILTER_FALSE ;
 int TEP_FILTER_NUMBER ;
 int TEP_FILTER_STRING ;
 struct tep_filter_arg* allocate_arg () ;
 struct tep_format_field comm ;
 struct tep_format_field cpu ;
 int free_arg (struct tep_filter_arg*) ;
 int isdigit (char const) ;
 int show_error (char*,char*,...) ;
 int strcmp (char const*,int ) ;
 int strdup (char const*) ;
 int strtoull (char const*,int *,int ) ;
 struct tep_format_field* tep_find_any_field (struct tep_event*,char const*) ;

__attribute__((used)) static enum tep_errno
create_arg_item(struct tep_event *event, const char *token,
  enum tep_event_type type, struct tep_filter_arg **parg, char *error_str)
{
 struct tep_format_field *field;
 struct tep_filter_arg *arg;

 arg = allocate_arg();
 if (arg == ((void*)0)) {
  show_error(error_str, "failed to allocate filter arg");
  return TEP_ERRNO__MEM_ALLOC_FAILED;
 }

 switch (type) {

 case 128:
 case 130:
  arg->type = TEP_FILTER_ARG_VALUE;
  arg->value.type =
   type == 130 ? TEP_FILTER_STRING : TEP_FILTER_CHAR;
  arg->value.str = strdup(token);
  if (!arg->value.str) {
   free_arg(arg);
   show_error(error_str, "failed to allocate string filter arg");
   return TEP_ERRNO__MEM_ALLOC_FAILED;
  }
  break;
 case 129:

  if (isdigit(token[0])) {
   arg->type = TEP_FILTER_ARG_VALUE;
   arg->value.type = TEP_FILTER_NUMBER;
   arg->value.val = strtoull(token, ((void*)0), 0);
   break;
  }

  field = tep_find_any_field(event, token);
  if (!field) {

   if (strcmp(token, COMM) == 0) {
    field = &comm;
   } else if (strcmp(token, CPU) == 0) {
    field = &cpu;
   } else {

    arg->type = TEP_FILTER_ARG_BOOLEAN;
    arg->boolean.value = TEP_FILTER_FALSE;
    break;
   }
  }
  arg->type = TEP_FILTER_ARG_FIELD;
  arg->field.field = field;
  break;
 default:
  free_arg(arg);
  show_error(error_str, "expected a value but found %s", token);
  return TEP_ERRNO__UNEXPECTED_TYPE;
 }
 *parg = arg;
 return 0;
}
