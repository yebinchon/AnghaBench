
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_jdesc {int jd_recover_error; int jd_flags; int jd_work; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 int JDF_RECOVERY ;
 int TASK_UNINTERRUPTIBLE ;
 int gfs_recovery_wq ;
 int queue_work (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wait_on_bit (int *,int ,int ) ;

int gfs2_recover_journal(struct gfs2_jdesc *jd, bool wait)
{
 int rv;

 if (test_and_set_bit(JDF_RECOVERY, &jd->jd_flags))
  return -EBUSY;


 rv = queue_work(gfs_recovery_wq, &jd->jd_work);
 BUG_ON(!rv);

 if (wait)
  wait_on_bit(&jd->jd_flags, JDF_RECOVERY,
       TASK_UNINTERRUPTIBLE);

 return wait ? jd->jd_recover_error : 0;
}
