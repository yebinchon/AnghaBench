
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
strlcmp(const char *s, const char *t, size_t n)
{
 while (n-- && *t != '\0')
  if (*s != *t)
   return ((unsigned char)*s - (unsigned char)*t);
  else
   ++s, ++t;
 return ((unsigned char)*s);
}
