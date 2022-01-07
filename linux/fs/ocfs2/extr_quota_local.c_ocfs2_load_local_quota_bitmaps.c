
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_quota_chunk {int qc_num; int qc_chunk; int * qc_headerbh; } ;
struct ocfs2_local_disk_dqinfo {int dqi_chunks; } ;
struct list_head {int dummy; } ;
struct inode {int i_sb; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (struct list_head*) ;
 struct ocfs2_quota_chunk* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct ocfs2_quota_chunk*) ;
 int le32_to_cpu (int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int mlog_errno (int) ;
 int ocfs2_qf_chunk_cachep ;
 int ocfs2_read_quota_block (struct inode*,int ,int **) ;
 int ocfs2_release_local_quota_bitmaps (struct list_head*) ;
 int ol_quota_chunk_block (int ,int) ;

__attribute__((used)) static int ocfs2_load_local_quota_bitmaps(struct inode *inode,
   struct ocfs2_local_disk_dqinfo *ldinfo,
   struct list_head *head)
{
 struct ocfs2_quota_chunk *newchunk;
 int i, status;

 INIT_LIST_HEAD(head);
 for (i = 0; i < le32_to_cpu(ldinfo->dqi_chunks); i++) {
  newchunk = kmem_cache_alloc(ocfs2_qf_chunk_cachep, GFP_NOFS);
  if (!newchunk) {
   ocfs2_release_local_quota_bitmaps(head);
   return -ENOMEM;
  }
  newchunk->qc_num = i;
  newchunk->qc_headerbh = ((void*)0);
  status = ocfs2_read_quota_block(inode,
    ol_quota_chunk_block(inode->i_sb, i),
    &newchunk->qc_headerbh);
  if (status) {
   mlog_errno(status);
   kmem_cache_free(ocfs2_qf_chunk_cachep, newchunk);
   ocfs2_release_local_quota_bitmaps(head);
   return status;
  }
  list_add_tail(&newchunk->qc_chunk, head);
 }
 return 0;
}
