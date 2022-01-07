
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

int strtailcmp(const char *s1, const char *s2)
{
 int i1 = strlen(s1);
 int i2 = strlen(s2);
 while (--i1 >= 0 && --i2 >= 0) {
  if (s1[i1] != s2[i2])
   return s1[i1] - s2[i2];
 }
 return 0;
}
