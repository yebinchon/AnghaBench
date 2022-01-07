
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;


 int TEP_EVENT_ERROR ;
 int TEP_EVENT_NEWLINE ;
 int TEP_EVENT_SPACE ;
 int free_token (char*) ;
 char* malloc (int) ;
 int sprintf (char*,char*,char,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char tep_peek_char () ;
 int tep_read_token (char**) ;

__attribute__((used)) static enum tep_event_type read_token(char **tok)
{
 enum tep_event_type type;
 char *token = ((void*)0);

 do {
  free_token(token);
  type = tep_read_token(&token);
 } while (type == TEP_EVENT_NEWLINE || type == TEP_EVENT_SPACE);


 if (token &&
     (strcmp(token, "=") == 0 || strcmp(token, "!") == 0) &&
     tep_peek_char() == '~') {

  *tok = malloc(3);
  if (*tok == ((void*)0)) {
   free_token(token);
   return TEP_EVENT_ERROR;
  }
  sprintf(*tok, "%c%c", *token, '~');
  free_token(token);

  tep_read_token(&token);
  free_token(token);
 } else
  *tok = token;

 return type;
}
