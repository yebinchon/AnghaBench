
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_sufile_info {scalar_t__ allocmax; scalar_t__ allocmin; } ;
struct inode {int dummy; } ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {int mi_sem; } ;


 int ERANGE ;
 TYPE_1__* NILFS_MDT (struct inode*) ;
 struct nilfs_sufile_info* NILFS_SUI (struct inode*) ;
 int down_write (int *) ;
 scalar_t__ nilfs_sufile_get_nsegments (struct inode*) ;
 int up_write (int *) ;

int nilfs_sufile_set_alloc_range(struct inode *sufile, __u64 start, __u64 end)
{
 struct nilfs_sufile_info *sui = NILFS_SUI(sufile);
 __u64 nsegs;
 int ret = -ERANGE;

 down_write(&NILFS_MDT(sufile)->mi_sem);
 nsegs = nilfs_sufile_get_nsegments(sufile);

 if (start <= end && end < nsegs) {
  sui->allocmin = start;
  sui->allocmax = end;
  ret = 0;
 }
 up_write(&NILFS_MDT(sufile)->mi_sem);
 return ret;
}
