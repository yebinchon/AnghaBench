
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
typedef int sle64 ;


 int ktime_get_coarse_real_ts64 (struct timespec64*) ;
 int utc2ntfs (struct timespec64) ;

__attribute__((used)) static inline sle64 get_current_ntfs_time(void)
{
 struct timespec64 ts;

 ktime_get_coarse_real_ts64(&ts);
 return utc2ntfs(ts);
}
