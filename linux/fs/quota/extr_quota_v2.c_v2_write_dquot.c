
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct quota_info {int dqio_sem; } ;
struct TYPE_3__ {int type; } ;
struct dquot {TYPE_1__ dq_id; int dq_sb; int dq_off; } ;
struct TYPE_4__ {int dqi_priv; } ;


 int down_read (int *) ;
 int down_write (int *) ;
 int qtree_write_dquot (int ,struct dquot*) ;
 TYPE_2__* sb_dqinfo (int ,int ) ;
 struct quota_info* sb_dqopt (int ) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int v2_write_dquot(struct dquot *dquot)
{
 struct quota_info *dqopt = sb_dqopt(dquot->dq_sb);
 int ret;
 bool alloc = 0;







 if (!dquot->dq_off) {
  alloc = 1;
  down_write(&dqopt->dqio_sem);
 } else {
  down_read(&dqopt->dqio_sem);
 }
 ret = qtree_write_dquot(
   sb_dqinfo(dquot->dq_sb, dquot->dq_id.type)->dqi_priv,
   dquot);
 if (alloc)
  up_write(&dqopt->dqio_sem);
 else
  up_read(&dqopt->dqio_sem);
 return ret;
}
