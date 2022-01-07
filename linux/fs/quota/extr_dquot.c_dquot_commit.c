
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct quota_info {TYPE_2__** ops; } ;
struct TYPE_3__ {size_t type; } ;
struct dquot {int dq_lock; TYPE_1__ dq_id; int dq_flags; int dq_sb; } ;
struct TYPE_4__ {int (* commit_dqblk ) (struct dquot*) ;} ;


 int DQ_ACTIVE_B ;
 int EIO ;
 int clear_dquot_dirty (struct dquot*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct quota_info* sb_dqopt (int ) ;
 int stub1 (struct dquot*) ;
 scalar_t__ test_bit (int ,int *) ;

int dquot_commit(struct dquot *dquot)
{
 int ret = 0;
 struct quota_info *dqopt = sb_dqopt(dquot->dq_sb);

 mutex_lock(&dquot->dq_lock);
 if (!clear_dquot_dirty(dquot))
  goto out_lock;


 if (test_bit(DQ_ACTIVE_B, &dquot->dq_flags))
  ret = dqopt->ops[dquot->dq_id.type]->commit_dqblk(dquot);
 else
  ret = -EIO;
out_lock:
 mutex_unlock(&dquot->dq_lock);
 return ret;
}
