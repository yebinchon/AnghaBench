
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {unsigned long* last_time; } ;


 size_t DISCARD_TIME ;
 size_t GC_TIME ;
 int REQ_TIME ;
 unsigned long jiffies ;

__attribute__((used)) static inline void f2fs_update_time(struct f2fs_sb_info *sbi, int type)
{
 unsigned long now = jiffies;

 sbi->last_time[type] = now;


 if (type == REQ_TIME) {
  sbi->last_time[DISCARD_TIME] = now;
  sbi->last_time[GC_TIME] = now;
 }
}
