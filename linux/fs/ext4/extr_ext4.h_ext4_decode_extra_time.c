
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec64 {int tv_sec; int tv_nsec; } ;
typedef int __le32 ;


 int EXT4_EPOCH_BITS ;
 int EXT4_EPOCH_MASK ;
 int EXT4_NSEC_MASK ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void ext4_decode_extra_time(struct timespec64 *time,
       __le32 extra)
{
 if (unlikely(extra & cpu_to_le32(EXT4_EPOCH_MASK)))
  time->tv_sec += (u64)(le32_to_cpu(extra) & EXT4_EPOCH_MASK) << 32;
 time->tv_nsec = (le32_to_cpu(extra) & EXT4_NSEC_MASK) >> EXT4_EPOCH_BITS;
}
