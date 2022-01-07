
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct udf_inode_info {struct timespec64 i_crtime; } ;



__attribute__((used)) static void udf_adjust_time(struct udf_inode_info *iinfo, struct timespec64 time)
{
 if (iinfo->i_crtime.tv_sec > time.tv_sec ||
     (iinfo->i_crtime.tv_sec == time.tv_sec &&
      iinfo->i_crtime.tv_nsec > time.tv_nsec))
  iinfo->i_crtime = time;
}
