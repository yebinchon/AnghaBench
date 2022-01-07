
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int s_bdev; TYPE_1__* s_op; } ;
struct quota_info {int flags; TYPE_2__** files; } ;
struct TYPE_5__ {int i_data; } ;
struct TYPE_4__ {int (* sync_fs ) (struct super_block*,int) ;} ;


 int DQUOT_QUOTA_SYS_FILE ;
 int MAXQUOTAS ;
 int dquot_writeback_dquots (struct super_block*,int) ;
 int inode_lock (TYPE_2__*) ;
 int inode_unlock (TYPE_2__*) ;
 struct quota_info* sb_dqopt (struct super_block*) ;
 int sb_has_quota_active (struct super_block*,int) ;
 int stub1 (struct super_block*,int) ;
 int sync_blockdev (int ) ;
 int truncate_inode_pages (int *,int ) ;

int dquot_quota_sync(struct super_block *sb, int type)
{
 struct quota_info *dqopt = sb_dqopt(sb);
 int cnt;
 int ret;

 ret = dquot_writeback_dquots(sb, type);
 if (ret)
  return ret;
 if (dqopt->flags & DQUOT_QUOTA_SYS_FILE)
  return 0;




 if (sb->s_op->sync_fs)
  sb->s_op->sync_fs(sb, 1);
 sync_blockdev(sb->s_bdev);





 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (type != -1 && cnt != type)
   continue;
  if (!sb_has_quota_active(sb, cnt))
   continue;
  inode_lock(dqopt->files[cnt]);
  truncate_inode_pages(&dqopt->files[cnt]->i_data, 0);
  inode_unlock(dqopt->files[cnt]);
 }

 return 0;
}
