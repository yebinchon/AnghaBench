
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
typedef int sle64 ;


 scalar_t__ NTFS_TIME_OFFSET ;
 int do_div (int ,int) ;
 scalar_t__ sle64_to_cpu (int const) ;

__attribute__((used)) static inline struct timespec64 ntfs2utc(const sle64 time)
{
 struct timespec64 ts;


 u64 t = (u64)(sle64_to_cpu(time) - NTFS_TIME_OFFSET);




 ts.tv_nsec = do_div(t, 10000000) * 100;
 ts.tv_sec = t;
 return ts;
}
