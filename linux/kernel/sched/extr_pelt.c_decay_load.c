
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int LOAD_AVG_PERIOD ;
 int mul_u64_u32_shr (int,int ,int) ;
 int * runnable_avg_yN_inv ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u64 decay_load(u64 val, u64 n)
{
 unsigned int local_n;

 if (unlikely(n > LOAD_AVG_PERIOD * 63))
  return 0;


 local_n = n;
 if (unlikely(local_n >= LOAD_AVG_PERIOD)) {
  val >>= local_n / LOAD_AVG_PERIOD;
  local_n %= LOAD_AVG_PERIOD;
 }

 val = mul_u64_u32_shr(val, runnable_avg_yN_inv[local_n], 32);
 return val;
}
