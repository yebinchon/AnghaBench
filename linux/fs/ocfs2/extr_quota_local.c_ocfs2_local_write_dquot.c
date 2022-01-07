
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_dquot {int dq_local_phys_blk; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {size_t type; } ;
struct dquot {TYPE_1__ dq_id; struct super_block* dq_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {struct inode** files; } ;


 struct ocfs2_dquot* OCFS2_DQUOT (struct dquot*) ;
 int brelse (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_modify_bh (struct inode*,struct buffer_head*,int ,struct ocfs2_dquot*) ;
 int ocfs2_read_quota_phys_block (struct inode*,int ,struct buffer_head**) ;
 int olq_set_dquot ;
 TYPE_2__* sb_dqopt (struct super_block*) ;

int ocfs2_local_write_dquot(struct dquot *dquot)
{
 struct super_block *sb = dquot->dq_sb;
 struct ocfs2_dquot *od = OCFS2_DQUOT(dquot);
 struct buffer_head *bh;
 struct inode *lqinode = sb_dqopt(sb)->files[dquot->dq_id.type];
 int status;

 status = ocfs2_read_quota_phys_block(lqinode, od->dq_local_phys_blk,
          &bh);
 if (status) {
  mlog_errno(status);
  goto out;
 }
 status = ocfs2_modify_bh(lqinode, bh, olq_set_dquot, od);
 if (status < 0) {
  mlog_errno(status);
  goto out;
 }
out:
 brelse(bh);
 return status;
}
