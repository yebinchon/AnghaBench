
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int __length_of(const int *list)
{
 int i;

 if (!list)
  return 0;

 for (i = 0; list[i]; i++)
  ;
 return i;
}
