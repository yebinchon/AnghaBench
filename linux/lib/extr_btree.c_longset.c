
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long *longset(unsigned long *s, unsigned long c, size_t n)
{
 size_t i;

 for (i = 0; i < n; i++)
  s[i] = c;
 return s;
}
