
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_print_arg {int dummy; } ;
struct tep_event {int dummy; } ;
typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;


 int TEP_PRINT_HEX_STR ;
 int process_hex_common (struct tep_event*,struct tep_print_arg*,char**,int ) ;

__attribute__((used)) static enum tep_event_type
process_hex_str(struct tep_event *event, struct tep_print_arg *arg,
  char **tok)
{
 return process_hex_common(event, arg, tok, TEP_PRINT_HEX_STR);
}
