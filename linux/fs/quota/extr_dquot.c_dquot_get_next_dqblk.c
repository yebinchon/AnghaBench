
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* dq_op; } ;
struct qc_dqblk {int dummy; } ;
struct kqid {int dummy; } ;
struct dquot {int dummy; } ;
struct TYPE_2__ {int (* get_next_id ) (struct super_block*,struct kqid*) ;} ;


 int ENOSYS ;
 scalar_t__ IS_ERR (struct dquot*) ;
 int PTR_ERR (struct dquot*) ;
 int do_get_dqblk (struct dquot*,struct qc_dqblk*) ;
 struct dquot* dqget (struct super_block*,struct kqid) ;
 int dqput (struct dquot*) ;
 int stub1 (struct super_block*,struct kqid*) ;

int dquot_get_next_dqblk(struct super_block *sb, struct kqid *qid,
    struct qc_dqblk *di)
{
 struct dquot *dquot;
 int err;

 if (!sb->dq_op->get_next_id)
  return -ENOSYS;
 err = sb->dq_op->get_next_id(sb, qid);
 if (err < 0)
  return err;
 dquot = dqget(sb, *qid);
 if (IS_ERR(dquot))
  return PTR_ERR(dquot);
 do_get_dqblk(dquot, di);
 dqput(dquot);

 return 0;
}
