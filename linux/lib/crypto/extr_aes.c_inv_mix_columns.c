
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int mix_columns (int) ;
 int mul_by_x2 (int) ;
 int ror32 (int,int) ;

__attribute__((used)) static u32 inv_mix_columns(u32 x)
{
 u32 y = mul_by_x2(x);

 return mix_columns(x ^ y ^ ror32(y, 16));
}
