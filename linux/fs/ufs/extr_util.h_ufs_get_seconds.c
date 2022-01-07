
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct super_block {int dummy; } ;
typedef int __fs32 ;


 int cpu_to_fs32 (struct super_block*,int ) ;
 int ktime_get_real_seconds () ;
 int lower_32_bits (int ) ;

__attribute__((used)) static inline __fs32 ufs_get_seconds(struct super_block *sbp)
{
 time64_t now = ktime_get_real_seconds();
 return cpu_to_fs32(sbp, lower_32_bits(now));
}
