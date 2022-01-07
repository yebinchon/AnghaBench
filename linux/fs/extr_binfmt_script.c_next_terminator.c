
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ spacetab (char) ;

__attribute__((used)) static inline char *next_terminator(char *first, const char *last)
{
 for (; first <= last; first++)
  if (spacetab(*first) || !*first)
   return first;
 return ((void*)0);
}
