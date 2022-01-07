
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
typedef int __u8 ;
typedef int __le32 ;


 int clamp_val (int ,int ,unsigned long long) ;
 int cpu_to_le32 (int ) ;
 int ktime_get_real_seconds () ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void __ext4_update_tstamp(__le32 *lo, __u8 *hi)
{
 time64_t now = ktime_get_real_seconds();

 now = clamp_val(now, 0, (1ull << 40) - 1);

 *lo = cpu_to_le32(lower_32_bits(now));
 *hi = upper_32_bits(now);
}
