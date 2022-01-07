
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {unsigned long* interval_time; scalar_t__* last_time; } ;


 unsigned long HZ ;
 int jiffies ;
 int time_after (int ,scalar_t__) ;

__attribute__((used)) static inline bool f2fs_time_over(struct f2fs_sb_info *sbi, int type)
{
 unsigned long interval = sbi->interval_time[type] * HZ;

 return time_after(jiffies, sbi->last_time[type] + interval);
}
