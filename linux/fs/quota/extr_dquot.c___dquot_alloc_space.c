
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;
struct dquot_warn {int w_type; } ;
struct dquot {int dq_dqb_lock; } ;
typedef scalar_t__ qsize_t ;


 int DQUOT_SPACE_RESERVE ;
 int MAXQUOTAS ;
 int QUOTA_NL_NOWARN ;
 int __inode_add_bytes (struct inode*,scalar_t__) ;
 int dquot_active (struct inode*) ;
 int dquot_add_space (struct dquot*,scalar_t__,scalar_t__,int,struct dquot_warn*) ;
 int dquot_decr_space (struct dquot*,scalar_t__) ;
 int dquot_free_reserved_space (struct dquot*,scalar_t__) ;
 int dquot_srcu ;
 int flush_warnings (struct dquot_warn*) ;
 struct dquot** i_dquot (struct inode*) ;
 int inode_add_bytes (struct inode*,scalar_t__) ;
 int * inode_reserved_space (struct inode*) ;
 int mark_all_dquot_dirty (struct dquot**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

int __dquot_alloc_space(struct inode *inode, qsize_t number, int flags)
{
 int cnt, ret = 0, index;
 struct dquot_warn warn[MAXQUOTAS];
 int reserve = flags & DQUOT_SPACE_RESERVE;
 struct dquot **dquots;

 if (!dquot_active(inode)) {
  if (reserve) {
   spin_lock(&inode->i_lock);
   *inode_reserved_space(inode) += number;
   spin_unlock(&inode->i_lock);
  } else {
   inode_add_bytes(inode, number);
  }
  goto out;
 }

 for (cnt = 0; cnt < MAXQUOTAS; cnt++)
  warn[cnt].w_type = QUOTA_NL_NOWARN;

 dquots = i_dquot(inode);
 index = srcu_read_lock(&dquot_srcu);
 spin_lock(&inode->i_lock);
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (!dquots[cnt])
   continue;
  if (reserve) {
   ret = dquot_add_space(dquots[cnt], 0, number, flags,
           &warn[cnt]);
  } else {
   ret = dquot_add_space(dquots[cnt], number, 0, flags,
           &warn[cnt]);
  }
  if (ret) {

   for (cnt--; cnt >= 0; cnt--) {
    if (!dquots[cnt])
     continue;
    spin_lock(&dquots[cnt]->dq_dqb_lock);
    if (reserve)
     dquot_free_reserved_space(dquots[cnt],
          number);
    else
     dquot_decr_space(dquots[cnt], number);
    spin_unlock(&dquots[cnt]->dq_dqb_lock);
   }
   spin_unlock(&inode->i_lock);
   goto out_flush_warn;
  }
 }
 if (reserve)
  *inode_reserved_space(inode) += number;
 else
  __inode_add_bytes(inode, number);
 spin_unlock(&inode->i_lock);

 if (reserve)
  goto out_flush_warn;
 mark_all_dquot_dirty(dquots);
out_flush_warn:
 srcu_read_unlock(&dquot_srcu, index);
 flush_warnings(warn);
out:
 return ret;
}
