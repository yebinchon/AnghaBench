
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;


 int TEP_EVENT_NEWLINE ;
 int TEP_EVENT_NONE ;
 int TEP_EVENT_SPACE ;
 int __read_token (char**) ;
 int free_token (char*) ;

__attribute__((used)) static enum tep_event_type read_token_item(char **tok)
{
 enum tep_event_type type;

 for (;;) {
  type = __read_token(tok);
  if (type != TEP_EVENT_SPACE && type != TEP_EVENT_NEWLINE)
   return type;
  free_token(*tok);
  *tok = ((void*)0);
 }


 *tok = ((void*)0);
 return TEP_EVENT_NONE;
}
