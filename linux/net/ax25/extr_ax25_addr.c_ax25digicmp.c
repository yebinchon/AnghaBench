
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ndigi; scalar_t__ lastrepeat; int * calls; } ;
typedef TYPE_1__ ax25_digi ;


 scalar_t__ ax25cmp (int *,int *) ;

int ax25digicmp(const ax25_digi *digi1, const ax25_digi *digi2)
{
 int i;

 if (digi1->ndigi != digi2->ndigi)
  return 1;

 if (digi1->lastrepeat != digi2->lastrepeat)
  return 1;

 for (i = 0; i < digi1->ndigi; i++)
  if (ax25cmp(&digi1->calls[i], &digi2->calls[i]) != 0)
   return 1;

 return 0;
}
