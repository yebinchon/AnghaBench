
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct dquot {int dq_free; } ;


 int dq_list_lock ;
 int dqput (struct dquot*) ;
 struct dquot** i_dquot (struct inode*) ;
 int list_add (int *,struct list_head*) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void remove_inode_dquot_ref(struct inode *inode, int type,
       struct list_head *tofree_head)
{
 struct dquot **dquots = i_dquot(inode);
 struct dquot *dquot = dquots[type];

 if (!dquot)
  return;

 dquots[type] = ((void*)0);
 if (list_empty(&dquot->dq_free)) {




  spin_lock(&dq_list_lock);
  list_add(&dquot->dq_free, tofree_head);
  spin_unlock(&dq_list_lock);
 } else {




  dqput(dquot);
 }
}
