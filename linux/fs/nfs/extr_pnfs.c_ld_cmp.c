
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__* ld_prefs ;

__attribute__((used)) static int
ld_cmp(const void *e1, const void *e2)
{
 u32 ld1 = *((u32 *)e1);
 u32 ld2 = *((u32 *)e2);
 int i;

 for (i = 0; ld_prefs[i] != 0; i++) {
  if (ld1 == ld_prefs[i])
   return -1;

  if (ld2 == ld_prefs[i])
   return 1;
 }
 return 0;
}
