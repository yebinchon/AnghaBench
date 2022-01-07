
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct quota_info {int dqio_sem; } ;
struct TYPE_3__ {int type; } ;
struct dquot {TYPE_1__ dq_id; int dq_sb; } ;
struct TYPE_4__ {int dqi_priv; } ;


 int down_read (int *) ;
 int qtree_read_dquot (int ,struct dquot*) ;
 TYPE_2__* sb_dqinfo (int ,int ) ;
 struct quota_info* sb_dqopt (int ) ;
 int up_read (int *) ;

__attribute__((used)) static int v2_read_dquot(struct dquot *dquot)
{
 struct quota_info *dqopt = sb_dqopt(dquot->dq_sb);
 int ret;

 down_read(&dqopt->dqio_sem);
 ret = qtree_read_dquot(
   sb_dqinfo(dquot->dq_sb, dquot->dq_id.type)->dqi_priv,
   dquot);
 up_read(&dqopt->dqio_sem);
 return ret;
}
