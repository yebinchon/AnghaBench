
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isxdigit (char) ;
 int strtol (char*,int ,int) ;

__attribute__((used)) static int getunicode(char **p0)
{
  char *p = *p0;

  while (*p == ' ' || *p == '\t')
    p++;
  if (*p != 'U' || p[1] != '+' ||
      !isxdigit(p[2]) || !isxdigit(p[3]) || !isxdigit(p[4]) ||
      !isxdigit(p[5]) || isxdigit(p[6]))
    return -1;
  *p0 = p+6;
  return strtol(p+2,0,16);
}
