
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct qc_dqblk {int dummy; } ;
struct kqid {int dummy; } ;
struct dquot {int dummy; } ;


 scalar_t__ IS_ERR (struct dquot*) ;
 int PTR_ERR (struct dquot*) ;
 int do_set_dqblk (struct dquot*,struct qc_dqblk*) ;
 struct dquot* dqget (struct super_block*,struct kqid) ;
 int dqput (struct dquot*) ;

int dquot_set_dqblk(struct super_block *sb, struct kqid qid,
    struct qc_dqblk *di)
{
 struct dquot *dquot;
 int rc;

 dquot = dqget(sb, qid);
 if (IS_ERR(dquot)) {
  rc = PTR_ERR(dquot);
  goto out;
 }
 rc = do_set_dqblk(dquot, di);
 dqput(dquot);
out:
 return rc;
}
