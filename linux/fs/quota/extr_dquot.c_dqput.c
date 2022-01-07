
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t type; } ;
struct dquot {int dq_free; int dq_count; TYPE_2__* dq_sb; int dq_flags; TYPE_4__ dq_id; } ;
struct TYPE_6__ {TYPE_1__* dq_op; } ;
struct TYPE_5__ {int (* write_dquot ) (struct dquot*) ;int (* release_dquot ) (struct dquot*) ;} ;


 int BUG () ;
 int BUG_ON (int) ;
 int DQST_DROPS ;
 int DQ_ACTIVE_B ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int clear_dquot_dirty (struct dquot*) ;
 int dq_list_lock ;
 int dqstats_inc (int ) ;
 scalar_t__ dquot_dirty (struct dquot*) ;
 int dquot_ref_wq ;
 int from_kqid (int *,TYPE_4__) ;
 int init_user_ns ;
 int list_empty (int *) ;
 int put_dquot_last (struct dquot*) ;
 int quota_error (TYPE_2__*,char*,int,...) ;
 int * quotatypes ;
 int sb_has_quota_active (TYPE_2__*,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct dquot*) ;
 int stub2 (struct dquot*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

void dqput(struct dquot *dquot)
{
 int ret;

 if (!dquot)
  return;
 dqstats_inc(DQST_DROPS);
we_slept:
 spin_lock(&dq_list_lock);
 if (atomic_read(&dquot->dq_count) > 1) {

  atomic_dec(&dquot->dq_count);

  if (!sb_has_quota_active(dquot->dq_sb, dquot->dq_id.type) &&
      atomic_read(&dquot->dq_count) == 1)
   wake_up(&dquot_ref_wq);
  spin_unlock(&dq_list_lock);
  return;
 }

 if (dquot_dirty(dquot)) {
  spin_unlock(&dq_list_lock);

  ret = dquot->dq_sb->dq_op->write_dquot(dquot);
  if (ret < 0) {
   quota_error(dquot->dq_sb, "Can't write quota structure"
        " (error %d). Quota may get out of sync!",
        ret);




   clear_dquot_dirty(dquot);
  }
  goto we_slept;
 }
 if (test_bit(DQ_ACTIVE_B, &dquot->dq_flags)) {
  spin_unlock(&dq_list_lock);
  dquot->dq_sb->dq_op->release_dquot(dquot);
  goto we_slept;
 }
 atomic_dec(&dquot->dq_count);




 put_dquot_last(dquot);
 spin_unlock(&dq_list_lock);
}
