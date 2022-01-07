
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXNAME ;
 char get_next_char () ;
 scalar_t__ isspace (int) ;

__attribute__((used)) static int get_extended_base_var(char *name, int baselen, int c)
{
 do {
  if (c == '\n')
   return -1;
  c = get_next_char();
 } while (isspace(c));


 if (c != '"')
  return -1;
 name[baselen++] = '.';

 for (;;) {
  int ch = get_next_char();

  if (ch == '\n')
   return -1;
  if (ch == '"')
   break;
  if (ch == '\\') {
   ch = get_next_char();
   if (ch == '\n')
    return -1;
  }
  name[baselen++] = ch;
  if (baselen > MAXNAME / 2)
   return -1;
 }


 if (get_next_char() != ']')
  return -1;
 return baselen;
}
