
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ JHASH_INITVAL ;
 scalar_t__ __jhash_nwords (scalar_t__,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static u32 jhash_2words(u32 a, u32 b, u32 initval)
{
 return __jhash_nwords(a, b, 0, initval + JHASH_INITVAL + (2 << 2));
}
