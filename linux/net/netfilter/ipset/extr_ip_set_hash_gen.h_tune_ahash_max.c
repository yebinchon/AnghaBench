
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;


 scalar_t__ AHASH_INIT_SIZE ;
 scalar_t__ AHASH_MAX_TUNED ;

__attribute__((used)) static inline u8
tune_ahash_max(u8 curr, u32 multi)
{
 u32 n;

 if (multi < curr)
  return curr;

 n = curr + AHASH_INIT_SIZE;



 return n > curr && n <= AHASH_MAX_TUNED ? n : curr;
}
