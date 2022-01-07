
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 int fls (scalar_t__) ;
 scalar_t__ jhash_size (int ) ;

__attribute__((used)) static u8
htable_bits(u32 hashsize)
{

 u8 bits = fls(hashsize - 1);

 if (jhash_size(bits) != hashsize)

  bits = fls(hashsize);

 return bits;
}
