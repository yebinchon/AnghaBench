
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;



__attribute__((used)) static inline
u64 nfs_timespec_to_change_attr(const struct timespec *ts)
{
 return ((u64)ts->tv_sec << 30) + ts->tv_nsec;
}
