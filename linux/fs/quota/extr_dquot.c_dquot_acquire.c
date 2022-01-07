
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct quota_info {TYPE_1__** ops; int * info; } ;
struct TYPE_4__ {size_t type; } ;
struct dquot {int dq_lock; int dq_flags; TYPE_2__ dq_id; int dq_sb; int dq_off; } ;
struct TYPE_3__ {int (* read_dqblk ) (struct dquot*) ;int (* commit_dqblk ) (struct dquot*) ;int (* write_file_info ) (int ,size_t) ;} ;


 int DQ_ACTIVE_B ;
 int DQ_READ_B ;
 scalar_t__ info_dirty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct quota_info* sb_dqopt (int ) ;
 int set_bit (int ,int *) ;
 int smp_mb__before_atomic () ;
 int stub1 (struct dquot*) ;
 int stub2 (struct dquot*) ;
 int stub3 (int ,size_t) ;
 int test_bit (int ,int *) ;

int dquot_acquire(struct dquot *dquot)
{
 int ret = 0, ret2 = 0;
 struct quota_info *dqopt = sb_dqopt(dquot->dq_sb);

 mutex_lock(&dquot->dq_lock);
 if (!test_bit(DQ_READ_B, &dquot->dq_flags)) {
  ret = dqopt->ops[dquot->dq_id.type]->read_dqblk(dquot);
  if (ret < 0)
   goto out_iolock;
 }

 smp_mb__before_atomic();
 set_bit(DQ_READ_B, &dquot->dq_flags);

 if (!test_bit(DQ_ACTIVE_B, &dquot->dq_flags) && !dquot->dq_off) {
  ret = dqopt->ops[dquot->dq_id.type]->commit_dqblk(dquot);

  if (info_dirty(&dqopt->info[dquot->dq_id.type])) {
   ret2 = dqopt->ops[dquot->dq_id.type]->write_file_info(
     dquot->dq_sb, dquot->dq_id.type);
  }
  if (ret < 0)
   goto out_iolock;
  if (ret2 < 0) {
   ret = ret2;
   goto out_iolock;
  }
 }




 smp_mb__before_atomic();
 set_bit(DQ_ACTIVE_B, &dquot->dq_flags);
out_iolock:
 mutex_unlock(&dquot->dq_lock);
 return ret;
}
