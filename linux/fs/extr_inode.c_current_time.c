
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct inode {int i_sb; } ;


 int WARN (int,char*) ;
 int ktime_get_coarse_real_ts64 (struct timespec64*) ;
 struct timespec64 timestamp_truncate (struct timespec64,struct inode*) ;
 scalar_t__ unlikely (int) ;

struct timespec64 current_time(struct inode *inode)
{
 struct timespec64 now;

 ktime_get_coarse_real_ts64(&now);

 if (unlikely(!inode->i_sb)) {
  WARN(1, "current_time() called with uninitialized super_block in the inode");
  return now;
 }

 return timestamp_truncate(now, inode);
}
