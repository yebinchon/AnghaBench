
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * field; int * size; } ;
struct tep_print_arg {int type; TYPE_1__ hex; } ;
struct tep_event {int dummy; } ;
typedef enum tep_print_arg_type { ____Placeholder_tep_print_arg_type } tep_print_arg_type ;
typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;


 int TEP_EVENT_ERROR ;
 scalar_t__ alloc_and_process_delim (struct tep_event*,char*,int **) ;
 int free_arg (int *) ;
 int memset (struct tep_print_arg*,int ,int) ;
 int read_token_item (char**) ;

__attribute__((used)) static enum tep_event_type
process_hex_common(struct tep_event *event, struct tep_print_arg *arg,
     char **tok, enum tep_print_arg_type type)
{
 memset(arg, 0, sizeof(*arg));
 arg->type = type;

 if (alloc_and_process_delim(event, ",", &arg->hex.field))
  goto out;

 if (alloc_and_process_delim(event, ")", &arg->hex.size))
  goto free_field;

 return read_token_item(tok);

free_field:
 free_arg(arg->hex.field);
 arg->hex.field = ((void*)0);
out:
 *tok = ((void*)0);
 return TEP_EVENT_ERROR;
}
