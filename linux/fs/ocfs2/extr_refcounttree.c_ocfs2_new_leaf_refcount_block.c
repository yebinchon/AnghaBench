
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int u16 ;
struct super_block {int s_blocksize; } ;
struct TYPE_3__ {void* rl_count; } ;
struct ocfs2_refcount_block {int rf_generation; TYPE_1__ rf_records; void* rf_flags; void* rf_parent; void* rf_blkno; void* rf_fs_generation; void* rf_suballoc_bit; void* rf_suballoc_loc; void* rf_suballoc_slot; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_alloc_context {int ac_alloc_slot; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_4__ {int fs_generation; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int OCFS2_JOURNAL_ACCESS_CREATE ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_REFCOUNT_BLOCK_SIGNATURE ;
 int OCFS2_REFCOUNT_LEAF_FL ;
 int OCFS2_REFCOUNT_TREE_FL ;
 TYPE_2__* OCFS2_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (scalar_t__) ;
 int le32_to_cpu (void*) ;
 int memset (struct ocfs2_refcount_block*,int ,int ) ;
 int mlog_errno (int) ;
 int ocfs2_claim_metadata (int *,struct ocfs2_alloc_context*,int,scalar_t__*,int *,int *,scalar_t__*) ;
 int ocfs2_divide_leaf_refcount_block (struct buffer_head*,struct buffer_head*,int *) ;
 int ocfs2_init_refcount_extent_tree (struct ocfs2_extent_tree*,struct ocfs2_caching_info*,struct buffer_head*) ;
 int ocfs2_insert_extent (int *,struct ocfs2_extent_tree*,int ,scalar_t__,int,int ,struct ocfs2_alloc_context*) ;
 int ocfs2_journal_access_rb (int *,struct ocfs2_caching_info*,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 struct super_block* ocfs2_metadata_cache_get_super (struct ocfs2_caching_info*) ;
 int ocfs2_refcount_recs_per_rb (struct super_block*) ;
 int ocfs2_set_new_buffer_uptodate (struct ocfs2_caching_info*,struct buffer_head*) ;
 struct buffer_head* sb_getblk (struct super_block*,scalar_t__) ;
 int strcpy (void*,int ) ;
 int trace_ocfs2_new_leaf_refcount_block (unsigned long long,int ) ;

__attribute__((used)) static int ocfs2_new_leaf_refcount_block(handle_t *handle,
      struct ocfs2_caching_info *ci,
      struct buffer_head *ref_root_bh,
      struct buffer_head *ref_leaf_bh,
      struct ocfs2_alloc_context *meta_ac)
{
 int ret;
 u16 suballoc_bit_start;
 u32 num_got, new_cpos;
 u64 suballoc_loc, blkno;
 struct super_block *sb = ocfs2_metadata_cache_get_super(ci);
 struct ocfs2_refcount_block *root_rb =
   (struct ocfs2_refcount_block *)ref_root_bh->b_data;
 struct buffer_head *new_bh = ((void*)0);
 struct ocfs2_refcount_block *new_rb;
 struct ocfs2_extent_tree ref_et;

 BUG_ON(!(le32_to_cpu(root_rb->rf_flags) & OCFS2_REFCOUNT_TREE_FL));

 ret = ocfs2_journal_access_rb(handle, ci, ref_root_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_journal_access_rb(handle, ci, ref_leaf_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_claim_metadata(handle, meta_ac, 1, &suballoc_loc,
       &suballoc_bit_start, &num_got,
       &blkno);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 new_bh = sb_getblk(sb, blkno);
 if (new_bh == ((void*)0)) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }
 ocfs2_set_new_buffer_uptodate(ci, new_bh);

 ret = ocfs2_journal_access_rb(handle, ci, new_bh,
          OCFS2_JOURNAL_ACCESS_CREATE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }


 new_rb = (struct ocfs2_refcount_block *)new_bh->b_data;
 memset(new_rb, 0, sb->s_blocksize);
 strcpy((void *)new_rb, OCFS2_REFCOUNT_BLOCK_SIGNATURE);
 new_rb->rf_suballoc_slot = cpu_to_le16(meta_ac->ac_alloc_slot);
 new_rb->rf_suballoc_loc = cpu_to_le64(suballoc_loc);
 new_rb->rf_suballoc_bit = cpu_to_le16(suballoc_bit_start);
 new_rb->rf_fs_generation = cpu_to_le32(OCFS2_SB(sb)->fs_generation);
 new_rb->rf_blkno = cpu_to_le64(blkno);
 new_rb->rf_parent = cpu_to_le64(ref_root_bh->b_blocknr);
 new_rb->rf_flags = cpu_to_le32(OCFS2_REFCOUNT_LEAF_FL);
 new_rb->rf_records.rl_count =
    cpu_to_le16(ocfs2_refcount_recs_per_rb(sb));
 new_rb->rf_generation = root_rb->rf_generation;

 ret = ocfs2_divide_leaf_refcount_block(ref_leaf_bh, new_bh, &new_cpos);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ocfs2_journal_dirty(handle, ref_leaf_bh);
 ocfs2_journal_dirty(handle, new_bh);

 ocfs2_init_refcount_extent_tree(&ref_et, ci, ref_root_bh);

 trace_ocfs2_new_leaf_refcount_block(
   (unsigned long long)new_bh->b_blocknr, new_cpos);


 ret = ocfs2_insert_extent(handle, &ref_et, new_cpos, new_bh->b_blocknr,
      1, 0, meta_ac);
 if (ret)
  mlog_errno(ret);

out:
 brelse(new_bh);
 return ret;
}
