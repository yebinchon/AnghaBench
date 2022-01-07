
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u64 ;
typedef int __le64 ;


 int const le64_to_cpu (int const) ;

__attribute__((used)) static inline u64 gfs2_bit_search(const __le64 *ptr, u64 mask, u8 state)
{
 u64 tmp;
 static const u64 search[] = {
  [0] = 0xffffffffffffffffULL,
  [1] = 0xaaaaaaaaaaaaaaaaULL,
  [2] = 0x5555555555555555ULL,
  [3] = 0x0000000000000000ULL,
 };
 tmp = le64_to_cpu(*ptr) ^ search[state];
 tmp &= (tmp >> 1);
 tmp &= mask;
 return tmp;
}
