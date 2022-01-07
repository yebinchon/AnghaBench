
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct quota_info {int dqio_sem; TYPE_1__* info; } ;
struct ocfs2_mem_dqinfo {int dummy; } ;
struct TYPE_2__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;


 int __ocfs2_global_write_info (struct super_block*,int) ;
 int down_write (int *) ;
 int ocfs2_qinfo_lock (struct ocfs2_mem_dqinfo*,int) ;
 int ocfs2_qinfo_unlock (struct ocfs2_mem_dqinfo*,int) ;
 struct quota_info* sb_dqopt (struct super_block*) ;
 int up_write (int *) ;

int ocfs2_global_write_info(struct super_block *sb, int type)
{
 int err;
 struct quota_info *dqopt = sb_dqopt(sb);
 struct ocfs2_mem_dqinfo *info = dqopt->info[type].dqi_priv;

 down_write(&dqopt->dqio_sem);
 err = ocfs2_qinfo_lock(info, 1);
 if (err < 0)
  goto out_sem;
 err = __ocfs2_global_write_info(sb, type);
 ocfs2_qinfo_unlock(info, 1);
out_sem:
 up_write(&dqopt->dqio_sem);
 return err;
}
