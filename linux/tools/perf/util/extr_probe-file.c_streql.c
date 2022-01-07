
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static bool streql(const char *a, const char *b)
{
 if (a == b)
  return 1;

 if (!a || !b)
  return 0;

 return !strcmp(a, b);
}
