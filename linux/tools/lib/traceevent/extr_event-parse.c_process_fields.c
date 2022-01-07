
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_print_flag_sym {struct tep_print_flag_sym* next; int * str; int * value; } ;
struct tep_print_arg {int dummy; } ;
struct tep_event {int dummy; } ;
typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;


 int TEP_EVENT_DELIM ;
 int TEP_EVENT_ERROR ;
 int TEP_EVENT_OP ;
 struct tep_print_arg* alloc_arg () ;
 char* arg_eval (struct tep_print_arg*) ;
 struct tep_print_flag_sym* calloc (int,int) ;
 int free_arg (struct tep_print_arg*) ;
 int free_flag_sym (struct tep_print_flag_sym*) ;
 int free_token (char*) ;
 int process_arg (struct tep_event*,struct tep_print_arg*,char**) ;
 int process_op (struct tep_event*,struct tep_print_arg*,char**) ;
 int read_token_item (char**) ;
 scalar_t__ strcmp (char*,char*) ;
 void* strdup (char*) ;
 scalar_t__ test_type_token (int,char*,int,char*) ;

__attribute__((used)) static enum tep_event_type
process_fields(struct tep_event *event, struct tep_print_flag_sym **list, char **tok)
{
 enum tep_event_type type;
 struct tep_print_arg *arg = ((void*)0);
 struct tep_print_flag_sym *field;
 char *token = *tok;
 char *value;

 do {
  free_token(token);
  type = read_token_item(&token);
  if (test_type_token(type, token, TEP_EVENT_OP, "{"))
   break;

  arg = alloc_arg();
  if (!arg)
   goto out_free;

  free_token(token);
  type = process_arg(event, arg, &token);

  if (type == TEP_EVENT_OP)
   type = process_op(event, arg, &token);

  if (type == TEP_EVENT_ERROR)
   goto out_free;

  if (test_type_token(type, token, TEP_EVENT_DELIM, ","))
   goto out_free;

  field = calloc(1, sizeof(*field));
  if (!field)
   goto out_free;

  value = arg_eval(arg);
  if (value == ((void*)0))
   goto out_free_field;
  field->value = strdup(value);
  if (field->value == ((void*)0))
   goto out_free_field;

  free_arg(arg);
  arg = alloc_arg();
  if (!arg)
   goto out_free;

  free_token(token);
  type = process_arg(event, arg, &token);
  if (test_type_token(type, token, TEP_EVENT_OP, "}"))
   goto out_free_field;

  value = arg_eval(arg);
  if (value == ((void*)0))
   goto out_free_field;
  field->str = strdup(value);
  if (field->str == ((void*)0))
   goto out_free_field;
  free_arg(arg);
  arg = ((void*)0);

  *list = field;
  list = &field->next;

  free_token(token);
  type = read_token_item(&token);
 } while (type == TEP_EVENT_DELIM && strcmp(token, ",") == 0);

 *tok = token;
 return type;

out_free_field:
 free_flag_sym(field);
out_free:
 free_arg(arg);
 free_token(token);
 *tok = ((void*)0);

 return TEP_EVENT_ERROR;
}
