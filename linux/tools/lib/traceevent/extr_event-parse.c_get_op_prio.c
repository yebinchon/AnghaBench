
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_warning (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int get_op_prio(char *op)
{
 if (!op[1]) {
  switch (op[0]) {
  case '~':
  case '!':
   return 4;
  case '*':
  case '/':
  case '%':
   return 6;
  case '+':
  case '-':
   return 7;

  case '<':
  case '>':
   return 9;

  case '&':
   return 11;
  case '^':
   return 12;
  case '|':
   return 13;
  case '?':
   return 16;
  default:
   do_warning("unknown op '%c'", op[0]);
   return -1;
  }
 } else {
  if (strcmp(op, "++") == 0 ||
      strcmp(op, "--") == 0) {
   return 3;
  } else if (strcmp(op, ">>") == 0 ||
      strcmp(op, "<<") == 0) {
   return 8;
  } else if (strcmp(op, ">=") == 0 ||
      strcmp(op, "<=") == 0) {
   return 9;
  } else if (strcmp(op, "==") == 0 ||
      strcmp(op, "!=") == 0) {
   return 10;
  } else if (strcmp(op, "&&") == 0) {
   return 14;
  } else if (strcmp(op, "||") == 0) {
   return 15;
  } else {
   do_warning("unknown op '%s'", op);
   return -1;
  }
 }
}
