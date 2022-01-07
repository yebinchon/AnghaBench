
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;


 int TEP_EVENT_DELIM ;
 int TEP_EVENT_DQUOTE ;
 int TEP_EVENT_ITEM ;
 int TEP_EVENT_NEWLINE ;
 int TEP_EVENT_NONE ;
 int TEP_EVENT_OP ;
 int TEP_EVENT_SPACE ;
 int TEP_EVENT_SQUOTE ;
 scalar_t__ isalnum (int) ;
 int isprint (int) ;
 scalar_t__ isspace (int) ;

__attribute__((used)) static enum tep_event_type get_type(int ch)
{
 if (ch == '\n')
  return TEP_EVENT_NEWLINE;
 if (isspace(ch))
  return TEP_EVENT_SPACE;
 if (isalnum(ch) || ch == '_')
  return TEP_EVENT_ITEM;
 if (ch == '\'')
  return TEP_EVENT_SQUOTE;
 if (ch == '"')
  return TEP_EVENT_DQUOTE;
 if (!isprint(ch))
  return TEP_EVENT_NONE;
 if (ch == '(' || ch == ')' || ch == ',')
  return TEP_EVENT_DELIM;

 return TEP_EVENT_OP;
}
