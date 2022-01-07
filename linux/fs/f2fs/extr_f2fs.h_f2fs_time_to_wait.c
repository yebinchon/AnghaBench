
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {unsigned long* interval_time; long* last_time; } ;


 unsigned long HZ ;
 long jiffies ;
 unsigned int jiffies_to_msecs (long) ;

__attribute__((used)) static inline unsigned int f2fs_time_to_wait(struct f2fs_sb_info *sbi,
      int type)
{
 unsigned long interval = sbi->interval_time[type] * HZ;
 unsigned int wait_ms = 0;
 long delta;

 delta = (sbi->last_time[type] + interval) - jiffies;
 if (delta > 0)
  wait_ms = jiffies_to_msecs(delta);

 return wait_ms;
}
