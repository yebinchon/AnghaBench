
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skipcomment (char const*) ;

__attribute__((used)) static const char *
skipargs(const char *cp)
{
 const char *ocp = cp;
 int level = 0;
 cp = skipcomment(cp);
 if (*cp != '(')
  return (cp);
 do {
  if (*cp == '(')
   level++;
  if (*cp == ')')
   level--;
  cp = skipcomment(cp+1);
 } while (level != 0 && *cp != '\0');
 if (level == 0)
  return (cp);
 else

  return (ocp);
}
