
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dquot {int dummy; } ;


 int MAXQUOTAS ;
 int dq_data_lock ;
 int dqput_all (struct dquot**) ;
 struct dquot** i_dquot (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __dquot_drop(struct inode *inode)
{
 int cnt;
 struct dquot **dquots = i_dquot(inode);
 struct dquot *put[MAXQUOTAS];

 spin_lock(&dq_data_lock);
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  put[cnt] = dquots[cnt];
  dquots[cnt] = ((void*)0);
 }
 spin_unlock(&dq_data_lock);
 dqput_all(put);
}
