
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int strcmp_null(const char *s1, const char *s2)
{
 if (!s1 && !s2)
  return 0;
 if (s1 && !s2)
  return -1;
 if (!s1 && s2)
  return 1;
 return strcmp(s1, s2);
}
