
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strglobmatch (char*,char const*) ;

__attribute__((used)) static bool match_pat(char *file, const char **pat)
{
 int i = 0;

 if (!pat)
  return 1;

 while (pat[i]) {
  if (strglobmatch(file, pat[i]))
   return 1;

  i++;
 }

 return 0;
}
