
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 int strlen (char*) ;

__attribute__((used)) static void fixdesc(char *s)
{
 char *e = s + strlen(s);


 --e;
 while (e >= s && isspace(*e))
  --e;
 if (*e == '.')
  *e = 0;
}
