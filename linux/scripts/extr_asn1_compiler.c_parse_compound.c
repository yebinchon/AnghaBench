
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct token {scalar_t__ token_type; int line; char* content; } ;
struct element {int flags; struct element* next; } ;


 int ELEMENT_CONDITIONAL ;
 int ELEMENT_SKIPPABLE ;
 scalar_t__ TOKEN_CLOSE_CURLY ;
 scalar_t__ TOKEN_COMMA ;
 scalar_t__ TOKEN_ELEMENT_NAME ;
 scalar_t__ TOKEN_OPEN_CURLY ;
 int exit (int) ;
 char* filename ;
 int fprintf (int ,char*,char*,...) ;
 struct element* parse_type (struct token**,struct token*,struct token*) ;
 int stderr ;

__attribute__((used)) static struct element *parse_compound(struct token **_cursor, struct token *end,
          int alternates)
{
 struct element *children, **child_p = &children, *element;
 struct token *cursor = *_cursor, *name;

 if (cursor->token_type != TOKEN_OPEN_CURLY) {
  fprintf(stderr, "%s:%d: Expected compound to start with brace not '%s'\n",
   filename, cursor->line, cursor->content);
  exit(1);
 }
 cursor++;
 if (cursor >= end)
  goto overrun_error;

 if (cursor->token_type == TOKEN_OPEN_CURLY) {
  fprintf(stderr, "%s:%d: Empty compound\n",
   filename, cursor->line);
  exit(1);
 }

 for (;;) {
  name = ((void*)0);
  if (cursor->token_type == TOKEN_ELEMENT_NAME) {
   name = cursor;
   cursor++;
   if (cursor >= end)
    goto overrun_error;
  }

  element = parse_type(&cursor, end, name);
  if (alternates)
   element->flags |= ELEMENT_SKIPPABLE | ELEMENT_CONDITIONAL;

  *child_p = element;
  child_p = &element->next;

  if (cursor >= end)
   goto overrun_error;
  if (cursor->token_type != TOKEN_COMMA)
   break;
  cursor++;
  if (cursor >= end)
   goto overrun_error;
 }

 children->flags &= ~ELEMENT_CONDITIONAL;

 if (cursor->token_type != TOKEN_CLOSE_CURLY) {
  fprintf(stderr, "%s:%d: Expected compound closure, got '%s'\n",
   filename, cursor->line, cursor->content);
  exit(1);
 }
 cursor++;

 *_cursor = cursor;
 return children;

overrun_error:
 fprintf(stderr, "%s: Unexpectedly hit EOF\n", filename);
 exit(1);
}
