
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
typedef scalar_t__ s32 ;



__attribute__((used)) static inline int tkip_replay_check(u32 iv32_n, u16 iv16_n,
        u32 iv32_o, u16 iv16_o)
{
 if ((s32)iv32_n - (s32)iv32_o < 0 ||
     (iv32_n == iv32_o && iv16_n <= iv16_o))
  return 1;
 return 0;
}
