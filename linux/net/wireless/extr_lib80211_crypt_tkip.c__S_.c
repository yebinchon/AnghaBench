
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 size_t Hi8 (int) ;
 size_t Lo8 (int) ;
 int* Sbox ;

__attribute__((used)) static inline u16 _S_(u16 v)
{
 u16 t = Sbox[Hi8(v)];
 return Sbox[Lo8(v)] ^ ((t << 8) | (t >> 8));
}
