
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int swab16 (int) ;
 int* tkip_sbox ;

__attribute__((used)) static u16 tkipS(u16 val)
{
 return tkip_sbox[val & 0xff] ^ swab16(tkip_sbox[val >> 8]);
}
