
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ s32 ;


 int do_div (int,int) ;
 int prandom_u32 () ;

__attribute__((used)) static inline s32 rfc3315_s14_backoff_update(s32 rt, s32 mrt)
{

 u64 tmp = (1900000 + prandom_u32() % 200001) * (u64)rt;
 do_div(tmp, 1000000);
 if ((s32)tmp > mrt) {

  tmp = (900000 + prandom_u32() % 200001) * (u64)mrt;
  do_div(tmp, 1000000);
 }
 return (s32)tmp;
}
