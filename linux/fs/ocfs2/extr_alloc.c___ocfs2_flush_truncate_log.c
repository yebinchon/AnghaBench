
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_truncate_log {int tl_used; } ;
struct ocfs2_super {struct ocfs2_journal* journal; struct buffer_head* osb_tl_bh; struct inode* osb_tl_inode; } ;
struct ocfs2_journal {int j_journal; } ;
struct TYPE_3__ {struct ocfs2_truncate_log i_dealloc; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int GLOBAL_BITMAP_SYSTEM_INODE ;
 int ML_ERROR ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int OCFS2_INVALID_SLOT ;
 int OCFS2_IS_VALID_DINODE (struct ocfs2_dinode*) ;
 int brelse (struct buffer_head*) ;
 int inode_lock (struct inode*) ;
 int inode_trylock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 int jbd2_journal_flush (int ) ;
 int jbd2_journal_lock_updates (int ) ;
 int jbd2_journal_unlock_updates (int ) ;
 unsigned int le16_to_cpu (int ) ;
 int mlog (int ,char*) ;
 int mlog_errno (int) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int ) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_replay_truncate_records (struct ocfs2_super*,struct inode*,struct buffer_head*) ;
 int trace_ocfs2_flush_truncate_log (unsigned long long,unsigned int) ;

int __ocfs2_flush_truncate_log(struct ocfs2_super *osb)
{
 int status;
 unsigned int num_to_flush;
 struct inode *tl_inode = osb->osb_tl_inode;
 struct inode *data_alloc_inode = ((void*)0);
 struct buffer_head *tl_bh = osb->osb_tl_bh;
 struct buffer_head *data_alloc_bh = ((void*)0);
 struct ocfs2_dinode *di;
 struct ocfs2_truncate_log *tl;
 struct ocfs2_journal *journal = osb->journal;

 BUG_ON(inode_trylock(tl_inode));

 di = (struct ocfs2_dinode *) tl_bh->b_data;




 BUG_ON(!OCFS2_IS_VALID_DINODE(di));

 tl = &di->id2.i_dealloc;
 num_to_flush = le16_to_cpu(tl->tl_used);
 trace_ocfs2_flush_truncate_log(
  (unsigned long long)OCFS2_I(tl_inode)->ip_blkno,
  num_to_flush);
 if (!num_to_flush) {
  status = 0;
  goto out;
 }







 jbd2_journal_lock_updates(journal->j_journal);
 status = jbd2_journal_flush(journal->j_journal);
 jbd2_journal_unlock_updates(journal->j_journal);
 if (status < 0) {
  mlog_errno(status);
  goto out;
 }

 data_alloc_inode = ocfs2_get_system_file_inode(osb,
             GLOBAL_BITMAP_SYSTEM_INODE,
             OCFS2_INVALID_SLOT);
 if (!data_alloc_inode) {
  status = -EINVAL;
  mlog(ML_ERROR, "Could not get bitmap inode!\n");
  goto out;
 }

 inode_lock(data_alloc_inode);

 status = ocfs2_inode_lock(data_alloc_inode, &data_alloc_bh, 1);
 if (status < 0) {
  mlog_errno(status);
  goto out_mutex;
 }

 status = ocfs2_replay_truncate_records(osb, data_alloc_inode,
            data_alloc_bh);
 if (status < 0)
  mlog_errno(status);

 brelse(data_alloc_bh);
 ocfs2_inode_unlock(data_alloc_inode, 1);

out_mutex:
 inode_unlock(data_alloc_inode);
 iput(data_alloc_inode);

out:
 return status;
}
