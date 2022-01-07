
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int strhash(const char *str, unsigned int sz)
{

 unsigned int i, hash = 2166136261U;

 for (i = 0; i < sz; i++)
  hash = (hash ^ str[i]) * 0x01000193;
 return hash;
}
