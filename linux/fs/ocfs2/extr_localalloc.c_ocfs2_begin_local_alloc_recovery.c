
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int sb; } ;
struct ocfs2_dinode {int i_check; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; int b_size; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INODE_CACHE (struct inode*) ;
 int LOCAL_ALLOC_SYSTEM_INODE ;
 int OCFS2_BH_IGNORE_CACHE ;
 int brelse (struct buffer_head*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 int kfree (struct ocfs2_dinode*) ;
 struct ocfs2_dinode* kmalloc (int ,int ) ;
 int memcpy (struct ocfs2_dinode*,scalar_t__,int ) ;
 int mlog_errno (int) ;
 int ocfs2_clear_local_alloc (struct ocfs2_dinode*) ;
 int ocfs2_compute_meta_ecc (int ,scalar_t__,int *) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int) ;
 int ocfs2_read_inode_block_full (struct inode*,struct buffer_head**,int ) ;
 int ocfs2_write_block (struct ocfs2_super*,struct buffer_head*,int ) ;
 int trace_ocfs2_begin_local_alloc_recovery (int) ;

int ocfs2_begin_local_alloc_recovery(struct ocfs2_super *osb,
         int slot_num,
         struct ocfs2_dinode **alloc_copy)
{
 int status = 0;
 struct buffer_head *alloc_bh = ((void*)0);
 struct inode *inode = ((void*)0);
 struct ocfs2_dinode *alloc;

 trace_ocfs2_begin_local_alloc_recovery(slot_num);

 *alloc_copy = ((void*)0);

 inode = ocfs2_get_system_file_inode(osb,
         LOCAL_ALLOC_SYSTEM_INODE,
         slot_num);
 if (!inode) {
  status = -EINVAL;
  mlog_errno(status);
  goto bail;
 }

 inode_lock(inode);

 status = ocfs2_read_inode_block_full(inode, &alloc_bh,
          OCFS2_BH_IGNORE_CACHE);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 *alloc_copy = kmalloc(alloc_bh->b_size, GFP_KERNEL);
 if (!(*alloc_copy)) {
  status = -ENOMEM;
  goto bail;
 }
 memcpy((*alloc_copy), alloc_bh->b_data, alloc_bh->b_size);

 alloc = (struct ocfs2_dinode *) alloc_bh->b_data;
 ocfs2_clear_local_alloc(alloc);

 ocfs2_compute_meta_ecc(osb->sb, alloc_bh->b_data, &alloc->i_check);
 status = ocfs2_write_block(osb, alloc_bh, INODE_CACHE(inode));
 if (status < 0)
  mlog_errno(status);

bail:
 if (status < 0) {
  kfree(*alloc_copy);
  *alloc_copy = ((void*)0);
 }

 brelse(alloc_bh);

 if (inode) {
  inode_unlock(inode);
  iput(inode);
 }

 if (status)
  mlog_errno(status);
 return status;
}
