
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int atomic_t ;


 scalar_t__ atomic_inc_return (int *) ;

u32 xfrm_get_acqseq(void)
{
 u32 res;
 static atomic_t acqseq;

 do {
  res = atomic_inc_return(&acqseq);
 } while (!res);

 return res;
}
