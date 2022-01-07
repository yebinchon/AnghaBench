
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned shash(unsigned char *s)
{
 unsigned h = 0;
 while (*s)
  h = 65599 * h + *s++;
 return h ^ (h >> 16);
}
