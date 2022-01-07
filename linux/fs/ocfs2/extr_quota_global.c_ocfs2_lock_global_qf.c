
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_mem_dqinfo {int dqi_gqinode; struct buffer_head* dqi_gqi_bh; int dqi_gqi_count; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_alloc_sem; } ;


 TYPE_1__* OCFS2_I (int ) ;
 int WARN_ON (int) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int dq_data_lock ;
 int inode_lock (int ) ;
 int ocfs2_inode_lock (int ,struct buffer_head**,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ocfs2_lock_global_qf(struct ocfs2_mem_dqinfo *oinfo, int ex)
{
 int status;
 struct buffer_head *bh = ((void*)0);

 status = ocfs2_inode_lock(oinfo->dqi_gqinode, &bh, ex);
 if (status < 0)
  return status;
 spin_lock(&dq_data_lock);
 if (!oinfo->dqi_gqi_count++)
  oinfo->dqi_gqi_bh = bh;
 else
  WARN_ON(bh != oinfo->dqi_gqi_bh);
 spin_unlock(&dq_data_lock);
 if (ex) {
  inode_lock(oinfo->dqi_gqinode);
  down_write(&OCFS2_I(oinfo->dqi_gqinode)->ip_alloc_sem);
 } else {
  down_read(&OCFS2_I(oinfo->dqi_gqinode)->ip_alloc_sem);
 }
 return 0;
}
