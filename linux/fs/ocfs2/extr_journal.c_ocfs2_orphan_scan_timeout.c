
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time ;


 unsigned long ORPHAN_SCAN_SCHEDULE_TIMEOUT ;
 int get_random_bytes (unsigned long*,int) ;
 unsigned long msecs_to_jiffies (unsigned long) ;

__attribute__((used)) static inline unsigned long ocfs2_orphan_scan_timeout(void)
{
 unsigned long time;

 get_random_bytes(&time, sizeof(time));
 time = ORPHAN_SCAN_SCHEDULE_TIMEOUT + (time % 5000);
 return msecs_to_jiffies(time);
}
