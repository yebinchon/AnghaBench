
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ fl_start; scalar_t__ fl_end; } ;
typedef scalar_t__ loff_t ;
typedef scalar_t__ __s32 ;


 int EINVAL ;
 scalar_t__ NFS_LOCK32_OFFSET_MAX ;
 scalar_t__ OFFSET_MAX ;

__attribute__((used)) static int nfs_lock_check_bounds(const struct file_lock *fl)
{
 __s32 start, end;

 start = (__s32)fl->fl_start;
 if ((loff_t)start != fl->fl_start)
  goto out_einval;

 if (fl->fl_end != OFFSET_MAX) {
  end = (__s32)fl->fl_end;
  if ((loff_t)end != fl->fl_end)
   goto out_einval;
 } else
  end = NFS_LOCK32_OFFSET_MAX;

 if (start < 0 || start > end)
  goto out_einval;
 return 0;
out_einval:
 return -EINVAL;
}
