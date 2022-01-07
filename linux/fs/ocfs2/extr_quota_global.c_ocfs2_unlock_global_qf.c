
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_mem_dqinfo {int * dqi_gqi_bh; int dqi_gqi_count; int dqi_gqinode; } ;
struct TYPE_2__ {int ip_alloc_sem; } ;


 TYPE_1__* OCFS2_I (int ) ;
 int brelse (int *) ;
 int dq_data_lock ;
 int inode_unlock (int ) ;
 int ocfs2_inode_unlock (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;
 int up_write (int *) ;

void ocfs2_unlock_global_qf(struct ocfs2_mem_dqinfo *oinfo, int ex)
{
 if (ex) {
  up_write(&OCFS2_I(oinfo->dqi_gqinode)->ip_alloc_sem);
  inode_unlock(oinfo->dqi_gqinode);
 } else {
  up_read(&OCFS2_I(oinfo->dqi_gqinode)->ip_alloc_sem);
 }
 ocfs2_inode_unlock(oinfo->dqi_gqinode, ex);
 brelse(oinfo->dqi_gqi_bh);
 spin_lock(&dq_data_lock);
 if (!--oinfo->dqi_gqi_count)
  oinfo->dqi_gqi_bh = ((void*)0);
 spin_unlock(&dq_data_lock);
}
