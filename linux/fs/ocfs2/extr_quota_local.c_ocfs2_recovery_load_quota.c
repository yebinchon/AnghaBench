
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ocfs2_local_disk_dqinfo {int dqi_chunks; } ;
struct ocfs2_local_disk_chunk {int dqc_free; } ;
struct list_head {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int brelse (struct buffer_head*) ;
 int free_recovery_list (struct list_head*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_add_recovery_chunk (struct super_block*,struct ocfs2_local_disk_chunk*,int,struct list_head*) ;
 int ocfs2_read_quota_block (struct inode*,int ,struct buffer_head**) ;
 scalar_t__ ol_chunk_entries (struct super_block*) ;
 int ol_quota_chunk_block (struct super_block*,int) ;

__attribute__((used)) static int ocfs2_recovery_load_quota(struct inode *lqinode,
         struct ocfs2_local_disk_dqinfo *ldinfo,
         int type,
         struct list_head *head)
{
 struct super_block *sb = lqinode->i_sb;
 struct buffer_head *hbh;
 struct ocfs2_local_disk_chunk *dchunk;
 int i, chunks = le32_to_cpu(ldinfo->dqi_chunks);
 int status = 0;

 for (i = 0; i < chunks; i++) {
  hbh = ((void*)0);
  status = ocfs2_read_quota_block(lqinode,
      ol_quota_chunk_block(sb, i),
      &hbh);
  if (status) {
   mlog_errno(status);
   break;
  }
  dchunk = (struct ocfs2_local_disk_chunk *)hbh->b_data;
  if (le32_to_cpu(dchunk->dqc_free) < ol_chunk_entries(sb))
   status = ocfs2_add_recovery_chunk(sb, dchunk, i, head);
  brelse(hbh);
  if (status < 0)
   break;
 }
 if (status < 0)
  free_recovery_list(head);
 return status;
}
