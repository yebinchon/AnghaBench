
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_print_arg {int dummy; } ;
struct tep_event {int dummy; } ;
typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;


 int process_arg_token (struct tep_event*,struct tep_print_arg*,char**,int) ;
 int read_token (char**) ;

__attribute__((used)) static enum tep_event_type
process_arg(struct tep_event *event, struct tep_print_arg *arg, char **tok)
{
 enum tep_event_type type;
 char *token;

 type = read_token(&token);
 *tok = token;

 return process_arg_token(event, arg, tok, type);
}
