
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *dn_find_slot(char *base, int max, int priority)
{
 int i;
 unsigned char *min = ((void*)0);

 base += 6;

 for(i = 0; i < max; i++) {
  if (!min || (*base < *min))
   min = base;
  base += 7;
 }

 if (!min)
  return ((void*)0);

 return (*min < priority) ? (min - 6) : ((void*)0);
}
