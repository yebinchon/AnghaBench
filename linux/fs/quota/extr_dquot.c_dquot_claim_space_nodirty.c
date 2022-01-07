
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_lock; } ;
struct TYPE_2__ {scalar_t__ dqb_rsvspace; int dqb_curspace; } ;
struct dquot {int dq_dqb_lock; TYPE_1__ dq_dqb; } ;
typedef scalar_t__ qsize_t ;


 int MAXQUOTAS ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __inode_add_bytes (struct inode*,scalar_t__) ;
 int dquot_active (struct inode*) ;
 int dquot_srcu ;
 struct dquot** i_dquot (struct inode*) ;
 int * inode_reserved_space (struct inode*) ;
 int mark_all_dquot_dirty (struct dquot**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

int dquot_claim_space_nodirty(struct inode *inode, qsize_t number)
{
 struct dquot **dquots;
 int cnt, index;

 if (!dquot_active(inode)) {
  spin_lock(&inode->i_lock);
  *inode_reserved_space(inode) -= number;
  __inode_add_bytes(inode, number);
  spin_unlock(&inode->i_lock);
  return 0;
 }

 dquots = i_dquot(inode);
 index = srcu_read_lock(&dquot_srcu);
 spin_lock(&inode->i_lock);

 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (dquots[cnt]) {
   struct dquot *dquot = dquots[cnt];

   spin_lock(&dquot->dq_dqb_lock);
   if (WARN_ON_ONCE(dquot->dq_dqb.dqb_rsvspace < number))
    number = dquot->dq_dqb.dqb_rsvspace;
   dquot->dq_dqb.dqb_curspace += number;
   dquot->dq_dqb.dqb_rsvspace -= number;
   spin_unlock(&dquot->dq_dqb_lock);
  }
 }

 *inode_reserved_space(inode) -= number;
 __inode_add_bytes(inode, number);
 spin_unlock(&inode->i_lock);
 mark_all_dquot_dirty(dquots);
 srcu_read_unlock(&dquot_srcu, index);
 return 0;
}
