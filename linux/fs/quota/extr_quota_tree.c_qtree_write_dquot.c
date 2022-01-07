
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {TYPE_3__* s_op; } ;
struct qtree_mem_dqinfo {int dqi_entry_size; TYPE_2__* dqi_ops; } ;
struct TYPE_4__ {int type; } ;
struct dquot {int dq_off; int dq_dqb_lock; struct super_block* dq_sb; TYPE_1__ dq_id; } ;
typedef int ssize_t ;
struct TYPE_6__ {int (* quota_write ) (struct super_block*,int,char*,int,int ) ;} ;
struct TYPE_5__ {int (* mem2disk_dqblk ) (char*,struct dquot*) ;} ;


 int DQST_WRITES ;
 int ENOMEM ;
 int ENOSPC ;
 int dq_insert_tree (struct qtree_mem_dqinfo*,struct dquot*) ;
 int dqstats_inc (int ) ;
 char* getdqbuf (int) ;
 int kfree (char*) ;
 int quota_error (struct super_block*,char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (char*,struct dquot*) ;
 int stub2 (struct super_block*,int,char*,int,int ) ;

int qtree_write_dquot(struct qtree_mem_dqinfo *info, struct dquot *dquot)
{
 int type = dquot->dq_id.type;
 struct super_block *sb = dquot->dq_sb;
 ssize_t ret;
 char *ddquot = getdqbuf(info->dqi_entry_size);

 if (!ddquot)
  return -ENOMEM;


 if (!dquot->dq_off) {
  ret = dq_insert_tree(info, dquot);
  if (ret < 0) {
   quota_error(sb, "Error %zd occurred while creating "
        "quota", ret);
   kfree(ddquot);
   return ret;
  }
 }
 spin_lock(&dquot->dq_dqb_lock);
 info->dqi_ops->mem2disk_dqblk(ddquot, dquot);
 spin_unlock(&dquot->dq_dqb_lock);
 ret = sb->s_op->quota_write(sb, type, ddquot, info->dqi_entry_size,
        dquot->dq_off);
 if (ret != info->dqi_entry_size) {
  quota_error(sb, "dquota write failed");
  if (ret >= 0)
   ret = -ENOSPC;
 } else {
  ret = 0;
 }
 dqstats_inc(DQST_WRITES);
 kfree(ddquot);

 return ret;
}
