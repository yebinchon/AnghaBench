
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int mul_by_x (int) ;
 int ror32 (int,int) ;

__attribute__((used)) static u32 mix_columns(u32 x)
{
 u32 y = mul_by_x(x) ^ ror32(x, 16);

 return y ^ ror32(x ^ y, 8);
}
