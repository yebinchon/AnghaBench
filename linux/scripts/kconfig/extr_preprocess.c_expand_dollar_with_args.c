
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* eval_clause (char const*,int,int,char**) ;
 int pperror (char*,char const*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *expand_dollar_with_args(const char **str, int argc, char *argv[])
{
 const char *p = *str;
 const char *q;
 int nest = 0;






 if (*p != '(') {
  *str = p;
  return xstrdup("$");
 }

 p++;
 q = p;
 while (*q) {
  if (*q == '(') {
   nest++;
  } else if (*q == ')') {
   if (nest-- == 0)
    break;
  }
  q++;
 }

 if (!*q)
  pperror("unterminated reference to '%s': missing ')'", p);


 *str = q + 1;

 return eval_clause(p, q - p, argc, argv);
}
