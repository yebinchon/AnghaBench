
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* ax25_call; } ;
typedef TYPE_1__ ax25_address ;



int ax25cmp(const ax25_address *a, const ax25_address *b)
{
 int ct = 0;

 while (ct < 6) {
  if ((a->ax25_call[ct] & 0xFE) != (b->ax25_call[ct] & 0xFE))
   return 1;
  ct++;
 }

 if ((a->ax25_call[ct] & 0x1E) == (b->ax25_call[ct] & 0x1E))
  return 0;

 return 2;
}
