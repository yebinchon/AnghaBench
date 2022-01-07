
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_print_arg {int dummy; } ;
struct tep_event {int dummy; } ;
typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;


 int TEP_EVENT_OP ;
 int process_arg (struct tep_event*,struct tep_print_arg*,char**) ;
 int process_op (struct tep_event*,struct tep_print_arg*,char**) ;

__attribute__((used)) static enum tep_event_type
process_field_arg(struct tep_event *event, struct tep_print_arg *arg, char **tok)
{
 enum tep_event_type type;

 type = process_arg(event, arg, tok);

 while (type == TEP_EVENT_OP) {
  type = process_op(event, arg, tok);
 }

 return type;
}
