
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_group_desc {int bg_free_bits_count; int bg_bits; int bg_blkno; void* bg_bitmap; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int INODE_CACHE (struct inode*) ;
 int OCFS2_IS_VALID_GROUP_DESC (struct ocfs2_group_desc*) ;
 int OCFS2_JOURNAL_ACCESS_UNDO ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int le16_add_cpu (int *,unsigned int) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_error (int ,char*,unsigned long long,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ ocfs2_is_cluster_bitmap (struct inode*) ;
 int ocfs2_journal_access_gd (int *,int ,struct buffer_head*,int) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_set_bit (int ,void*) ;
 int trace_ocfs2_block_group_set_bits (unsigned int,unsigned int) ;

int ocfs2_block_group_set_bits(handle_t *handle,
          struct inode *alloc_inode,
          struct ocfs2_group_desc *bg,
          struct buffer_head *group_bh,
          unsigned int bit_off,
          unsigned int num_bits)
{
 int status;
 void *bitmap = bg->bg_bitmap;
 int journal_type = OCFS2_JOURNAL_ACCESS_WRITE;



 BUG_ON(!OCFS2_IS_VALID_GROUP_DESC(bg));
 BUG_ON(le16_to_cpu(bg->bg_free_bits_count) < num_bits);

 trace_ocfs2_block_group_set_bits(bit_off, num_bits);

 if (ocfs2_is_cluster_bitmap(alloc_inode))
  journal_type = OCFS2_JOURNAL_ACCESS_UNDO;

 status = ocfs2_journal_access_gd(handle,
      INODE_CACHE(alloc_inode),
      group_bh,
      journal_type);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 le16_add_cpu(&bg->bg_free_bits_count, -num_bits);
 if (le16_to_cpu(bg->bg_free_bits_count) > le16_to_cpu(bg->bg_bits)) {
  return ocfs2_error(alloc_inode->i_sb, "Group descriptor # %llu has bit count %u but claims %u are freed. num_bits %d\n",
       (unsigned long long)le64_to_cpu(bg->bg_blkno),
       le16_to_cpu(bg->bg_bits),
       le16_to_cpu(bg->bg_free_bits_count),
       num_bits);
 }
 while(num_bits--)
  ocfs2_set_bit(bit_off++, bitmap);

 ocfs2_journal_dirty(handle, group_bh);

bail:
 return status;
}
