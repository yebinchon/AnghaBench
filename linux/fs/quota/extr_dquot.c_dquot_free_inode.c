
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;
struct dquot_warn {int w_type; } ;
struct dquot {int dq_dqb_lock; } ;


 int MAXQUOTAS ;
 int QUOTA_NL_NOWARN ;
 int dquot_active (struct inode*) ;
 int dquot_decr_inodes (struct dquot* const,int) ;
 int dquot_srcu ;
 int flush_warnings (struct dquot_warn*) ;
 struct dquot** i_dquot (struct inode*) ;
 int info_idq_free (struct dquot* const,int) ;
 int mark_all_dquot_dirty (struct dquot* const*) ;
 int prepare_warning (struct dquot_warn*,struct dquot* const,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

void dquot_free_inode(struct inode *inode)
{
 unsigned int cnt;
 struct dquot_warn warn[MAXQUOTAS];
 struct dquot * const *dquots;
 int index;

 if (!dquot_active(inode))
  return;

 dquots = i_dquot(inode);
 index = srcu_read_lock(&dquot_srcu);
 spin_lock(&inode->i_lock);
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  int wtype;

  warn[cnt].w_type = QUOTA_NL_NOWARN;
  if (!dquots[cnt])
   continue;
  spin_lock(&dquots[cnt]->dq_dqb_lock);
  wtype = info_idq_free(dquots[cnt], 1);
  if (wtype != QUOTA_NL_NOWARN)
   prepare_warning(&warn[cnt], dquots[cnt], wtype);
  dquot_decr_inodes(dquots[cnt], 1);
  spin_unlock(&dquots[cnt]->dq_dqb_lock);
 }
 spin_unlock(&inode->i_lock);
 mark_all_dquot_dirty(dquots);
 srcu_read_unlock(&dquot_srcu, index);
 flush_warnings(warn);
}
