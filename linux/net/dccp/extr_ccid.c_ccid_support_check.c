
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 int * ccid_by_number (size_t const) ;

bool ccid_support_check(u8 const *ccid_array, u8 array_len)
{
 while (array_len > 0)
  if (ccid_by_number(ccid_array[--array_len]) == ((void*)0))
   return 0;
 return 1;
}
