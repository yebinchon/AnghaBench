
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sysv_sb_info {scalar_t__ s_type; scalar_t__* s_sb_state; int s_lock; int s_bh2; scalar_t__* s_sb_time; } ;
struct super_block {int dummy; } ;


 scalar_t__ FSTYPE_SYSV4 ;
 struct sysv_sb_info* SYSV_SB (struct super_block*) ;
 scalar_t__ cpu_to_fs32 (struct sysv_sb_info*,scalar_t__) ;
 scalar_t__ fs32_to_cpu (struct sysv_sb_info*,scalar_t__) ;
 int ktime_get_real_seconds () ;
 int mark_buffer_dirty (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int sysv_sync_fs(struct super_block *sb, int wait)
{
 struct sysv_sb_info *sbi = SYSV_SB(sb);
 u32 time = (u32)ktime_get_real_seconds(), old_time;

 mutex_lock(&sbi->s_lock);






 old_time = fs32_to_cpu(sbi, *sbi->s_sb_time);
 if (sbi->s_type == FSTYPE_SYSV4) {
  if (*sbi->s_sb_state == cpu_to_fs32(sbi, 0x7c269d38u - old_time))
   *sbi->s_sb_state = cpu_to_fs32(sbi, 0x7c269d38u - time);
  *sbi->s_sb_time = cpu_to_fs32(sbi, time);
  mark_buffer_dirty(sbi->s_bh2);
 }

 mutex_unlock(&sbi->s_lock);

 return 0;
}
