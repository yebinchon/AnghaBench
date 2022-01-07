
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_cached_block_free {struct ocfs2_cached_block_free* free_next; int free_bit; scalar_t__ free_blk; scalar_t__ free_bg; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int EINVAL ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_SUBALLOC_FREE ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 int kfree (struct ocfs2_cached_block_free*) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_free_suballoc_bits (int *,struct inode*,struct buffer_head*,int ,scalar_t__,int) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int,int) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 scalar_t__ ocfs2_which_suballoc_group (scalar_t__,int ) ;
 int trace_ocfs2_free_cached_blocks (unsigned long long,int ) ;

__attribute__((used)) static int ocfs2_free_cached_blocks(struct ocfs2_super *osb,
        int sysfile_type,
        int slot,
        struct ocfs2_cached_block_free *head)
{
 int ret;
 u64 bg_blkno;
 handle_t *handle;
 struct inode *inode;
 struct buffer_head *di_bh = ((void*)0);
 struct ocfs2_cached_block_free *tmp;

 inode = ocfs2_get_system_file_inode(osb, sysfile_type, slot);
 if (!inode) {
  ret = -EINVAL;
  mlog_errno(ret);
  goto out;
 }

 inode_lock(inode);

 ret = ocfs2_inode_lock(inode, &di_bh, 1);
 if (ret) {
  mlog_errno(ret);
  goto out_mutex;
 }

 while (head) {
  if (head->free_bg)
   bg_blkno = head->free_bg;
  else
   bg_blkno = ocfs2_which_suballoc_group(head->free_blk,
             head->free_bit);
  handle = ocfs2_start_trans(osb, OCFS2_SUBALLOC_FREE);
  if (IS_ERR(handle)) {
   ret = PTR_ERR(handle);
   mlog_errno(ret);
   goto out_unlock;
  }

  trace_ocfs2_free_cached_blocks(
       (unsigned long long)head->free_blk, head->free_bit);

  ret = ocfs2_free_suballoc_bits(handle, inode, di_bh,
            head->free_bit, bg_blkno, 1);
  if (ret)
   mlog_errno(ret);

  ocfs2_commit_trans(osb, handle);

  tmp = head;
  head = head->free_next;
  kfree(tmp);
 }

out_unlock:
 ocfs2_inode_unlock(inode, 1);
 brelse(di_bh);
out_mutex:
 inode_unlock(inode);
 iput(inode);
out:
 while(head) {

  tmp = head;
  head = head->free_next;
  kfree(tmp);
 }

 return ret;
}
