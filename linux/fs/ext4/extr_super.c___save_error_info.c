
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_bdev; } ;
struct ext4_super_block {int s_error_count; int s_last_error_block; int s_first_error_block; int s_last_error_ino; int s_first_error_ino; void* s_first_error_line; int s_first_error_func; int s_last_error_time_hi; int s_first_error_time_hi; scalar_t__ s_last_error_time; scalar_t__ s_first_error_time; void* s_last_error_line; int s_last_error_func; int s_state; } ;
struct TYPE_2__ {int s_err_report; int s_mount_state; struct ext4_super_block* s_es; } ;


 int EXT4_ERROR_FS ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 int HZ ;
 scalar_t__ bdev_read_only (int ) ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (unsigned int) ;
 int ext4_update_tstamp (struct ext4_super_block*,int ) ;
 scalar_t__ jiffies ;
 int le32_add_cpu (int *,int) ;
 int mod_timer (int *,scalar_t__) ;
 int s_last_error_time ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static void __save_error_info(struct super_block *sb, const char *func,
       unsigned int line)
{
 struct ext4_super_block *es = EXT4_SB(sb)->s_es;

 EXT4_SB(sb)->s_mount_state |= EXT4_ERROR_FS;
 if (bdev_read_only(sb->s_bdev))
  return;
 es->s_state |= cpu_to_le16(EXT4_ERROR_FS);
 ext4_update_tstamp(es, s_last_error_time);
 strncpy(es->s_last_error_func, func, sizeof(es->s_last_error_func));
 es->s_last_error_line = cpu_to_le32(line);
 if (!es->s_first_error_time) {
  es->s_first_error_time = es->s_last_error_time;
  es->s_first_error_time_hi = es->s_last_error_time_hi;
  strncpy(es->s_first_error_func, func,
   sizeof(es->s_first_error_func));
  es->s_first_error_line = cpu_to_le32(line);
  es->s_first_error_ino = es->s_last_error_ino;
  es->s_first_error_block = es->s_last_error_block;
 }




 if (!es->s_error_count)
  mod_timer(&EXT4_SB(sb)->s_err_report, jiffies + 24*60*60*HZ);
 le32_add_cpu(&es->s_error_count, 1);
}
