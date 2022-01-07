
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
 int do_get_dqblk (struct dquot*,struct qc_dqblk*) ;
 struct dquot* dqget (struct super_block*,struct kqid) ;
 int dqput (struct dquot*) ;

int dquot_get_dqblk(struct super_block *sb, struct kqid qid,
      struct qc_dqblk *di)
{
 struct dquot *dquot;

 dquot = dqget(sb, qid);
 if (IS_ERR(dquot))
  return PTR_ERR(dquot);
 do_get_dqblk(dquot, di);
 dqput(dquot);

 return 0;
}
