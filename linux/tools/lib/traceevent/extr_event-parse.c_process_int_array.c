
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * field; int * count; int * el_size; } ;
struct tep_print_arg {TYPE_1__ int_array; int type; } ;
struct tep_event {int dummy; } ;
typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;


 int TEP_EVENT_ERROR ;
 int TEP_PRINT_INT_ARRAY ;
 scalar_t__ alloc_and_process_delim (struct tep_event*,char*,int **) ;
 int free_arg (int *) ;
 int memset (struct tep_print_arg*,int ,int) ;
 int read_token_item (char**) ;

__attribute__((used)) static enum tep_event_type
process_int_array(struct tep_event *event, struct tep_print_arg *arg, char **tok)
{
 memset(arg, 0, sizeof(*arg));
 arg->type = TEP_PRINT_INT_ARRAY;

 if (alloc_and_process_delim(event, ",", &arg->int_array.field))
  goto out;

 if (alloc_and_process_delim(event, ",", &arg->int_array.count))
  goto free_field;

 if (alloc_and_process_delim(event, ")", &arg->int_array.el_size))
  goto free_size;

 return read_token_item(tok);

free_size:
 free_arg(arg->int_array.count);
 arg->int_array.count = ((void*)0);
free_field:
 free_arg(arg->int_array.field);
 arg->int_array.field = ((void*)0);
out:
 *tok = ((void*)0);
 return TEP_EVENT_ERROR;
}
