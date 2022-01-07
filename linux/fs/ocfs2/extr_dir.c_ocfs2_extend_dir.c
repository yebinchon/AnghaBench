
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct ocfs2_super {struct super_block* sb; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_extent_list {int dummy; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_dx_root_bh; } ;
struct ocfs2_dir_entry {void* rec_len; scalar_t__ inode; } ;
struct TYPE_4__ {struct ocfs2_extent_list i_list; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct ocfs2_alloc_context {int * ac_resv; } ;
struct inode {int i_blocks; TYPE_2__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ loff_t ;
typedef int handle_t ;
struct TYPE_6__ {int ip_dyn_features; int ip_alloc_sem; int ip_lock; int ip_la_data_resv; int ip_clusters; scalar_t__ ip_blkno; } ;
struct TYPE_5__ {scalar_t__ s_blocksize; } ;


 int BUG_ON (struct buffer_head*) ;
 int ENOSPC ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_3__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int OCFS2_JOURNAL_ACCESS_CREATE ;
 int OCFS2_SIMPLE_DIR_EXTEND_CREDITS ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_le16 (int ) ;
 int down_write (int *) ;
 int get_bh (struct buffer_head*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int le16_to_cpu (void*) ;
 int memset (scalar_t__,int ,int ) ;
 int mlog_errno (int) ;
 int ocfs2_calc_extend_credits (struct super_block*,struct ocfs2_extent_list*) ;
 scalar_t__ ocfs2_clusters_to_bytes (struct super_block*,int ) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 scalar_t__ ocfs2_dir_indexed (struct inode*) ;
 scalar_t__ ocfs2_dir_resv_allowed (struct ocfs2_super*) ;
 int ocfs2_dir_trailer_blk_off (struct super_block*) ;
 int ocfs2_do_extend_dir (struct super_block*,int *,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,struct buffer_head**) ;
 int ocfs2_dx_dir_link_trailer (struct inode*,int *,struct buffer_head*,struct buffer_head*) ;
 int ocfs2_expand_inline_dir (struct inode*,struct buffer_head*,unsigned int,struct ocfs2_dir_lookup_result*,struct buffer_head**) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_init_dinode_extent_tree (struct ocfs2_extent_tree*,int ,struct buffer_head*) ;
 int ocfs2_init_dir_trailer (struct inode*,struct buffer_head*,int ) ;
 int ocfs2_inode_sector_count (struct inode*) ;
 int ocfs2_journal_access_db (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_mark_inode_dirty (int *,struct inode*,struct buffer_head*) ;
 int ocfs2_num_free_extents (struct ocfs2_extent_tree*) ;
 int ocfs2_reserve_clusters (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ;
 int ocfs2_reserve_new_metadata (struct ocfs2_super*,struct ocfs2_extent_list*,struct ocfs2_alloc_context**) ;
 int ocfs2_set_new_buffer_uptodate (int ,struct buffer_head*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int) ;
 scalar_t__ ocfs2_supports_dir_trailer (struct inode*) ;
 int ocfs2_update_inode_fsync_trans (int *,struct inode*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_extend_dir (unsigned long long,scalar_t__) ;
 int up_write (int *) ;

__attribute__((used)) static int ocfs2_extend_dir(struct ocfs2_super *osb,
       struct inode *dir,
       struct buffer_head *parent_fe_bh,
       unsigned int blocks_wanted,
       struct ocfs2_dir_lookup_result *lookup,
       struct buffer_head **new_de_bh)
{
 int status = 0;
 int credits, num_free_extents, drop_alloc_sem = 0;
 loff_t dir_i_size;
 struct ocfs2_dinode *fe = (struct ocfs2_dinode *) parent_fe_bh->b_data;
 struct ocfs2_extent_list *el = &fe->id2.i_list;
 struct ocfs2_alloc_context *data_ac = ((void*)0);
 struct ocfs2_alloc_context *meta_ac = ((void*)0);
 handle_t *handle = ((void*)0);
 struct buffer_head *new_bh = ((void*)0);
 struct ocfs2_dir_entry * de;
 struct super_block *sb = osb->sb;
 struct ocfs2_extent_tree et;
 struct buffer_head *dx_root_bh = lookup->dl_dx_root_bh;

 if (OCFS2_I(dir)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {




  BUG_ON(dx_root_bh);

  status = ocfs2_expand_inline_dir(dir, parent_fe_bh,
       blocks_wanted, lookup,
       &new_bh);
  if (status) {
   mlog_errno(status);
   goto bail;
  }



  dx_root_bh = lookup->dl_dx_root_bh;

  if (blocks_wanted == 1) {







   BUG_ON(new_bh == ((void*)0));
   goto bail_bh;
  }





  brelse(new_bh);
  new_bh = ((void*)0);

  down_write(&OCFS2_I(dir)->ip_alloc_sem);
  drop_alloc_sem = 1;
  dir_i_size = i_size_read(dir);
  credits = OCFS2_SIMPLE_DIR_EXTEND_CREDITS;
  goto do_extend;
 }

 down_write(&OCFS2_I(dir)->ip_alloc_sem);
 drop_alloc_sem = 1;
 dir_i_size = i_size_read(dir);
 trace_ocfs2_extend_dir((unsigned long long)OCFS2_I(dir)->ip_blkno,
          dir_i_size);


 spin_lock(&OCFS2_I(dir)->ip_lock);
 if (dir_i_size == ocfs2_clusters_to_bytes(sb, OCFS2_I(dir)->ip_clusters)) {
  spin_unlock(&OCFS2_I(dir)->ip_lock);
  ocfs2_init_dinode_extent_tree(&et, INODE_CACHE(dir),
           parent_fe_bh);
  num_free_extents = ocfs2_num_free_extents(&et);
  if (num_free_extents < 0) {
   status = num_free_extents;
   mlog_errno(status);
   goto bail;
  }

  if (!num_free_extents) {
   status = ocfs2_reserve_new_metadata(osb, el, &meta_ac);
   if (status < 0) {
    if (status != -ENOSPC)
     mlog_errno(status);
    goto bail;
   }
  }

  status = ocfs2_reserve_clusters(osb, 1, &data_ac);
  if (status < 0) {
   if (status != -ENOSPC)
    mlog_errno(status);
   goto bail;
  }

  if (ocfs2_dir_resv_allowed(osb))
   data_ac->ac_resv = &OCFS2_I(dir)->ip_la_data_resv;

  credits = ocfs2_calc_extend_credits(sb, el);
 } else {
  spin_unlock(&OCFS2_I(dir)->ip_lock);
  credits = OCFS2_SIMPLE_DIR_EXTEND_CREDITS;
 }

do_extend:
 if (ocfs2_dir_indexed(dir))
  credits++;


 handle = ocfs2_start_trans(osb, credits);
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  handle = ((void*)0);
  mlog_errno(status);
  goto bail;
 }

 status = ocfs2_do_extend_dir(osb->sb, handle, dir, parent_fe_bh,
         data_ac, meta_ac, &new_bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 ocfs2_set_new_buffer_uptodate(INODE_CACHE(dir), new_bh);

 status = ocfs2_journal_access_db(handle, INODE_CACHE(dir), new_bh,
      OCFS2_JOURNAL_ACCESS_CREATE);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }
 memset(new_bh->b_data, 0, sb->s_blocksize);

 de = (struct ocfs2_dir_entry *) new_bh->b_data;
 de->inode = 0;
 if (ocfs2_supports_dir_trailer(dir)) {
  de->rec_len = cpu_to_le16(ocfs2_dir_trailer_blk_off(sb));

  ocfs2_init_dir_trailer(dir, new_bh, le16_to_cpu(de->rec_len));

  if (ocfs2_dir_indexed(dir)) {
   status = ocfs2_dx_dir_link_trailer(dir, handle,
          dx_root_bh, new_bh);
   if (status) {
    mlog_errno(status);
    goto bail;
   }
  }
 } else {
  de->rec_len = cpu_to_le16(sb->s_blocksize);
 }
 ocfs2_update_inode_fsync_trans(handle, dir, 1);
 ocfs2_journal_dirty(handle, new_bh);

 dir_i_size += dir->i_sb->s_blocksize;
 i_size_write(dir, dir_i_size);
 dir->i_blocks = ocfs2_inode_sector_count(dir);
 status = ocfs2_mark_inode_dirty(handle, dir, parent_fe_bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

bail_bh:
 *new_de_bh = new_bh;
 get_bh(*new_de_bh);
bail:
 if (handle)
  ocfs2_commit_trans(osb, handle);
 if (drop_alloc_sem)
  up_write(&OCFS2_I(dir)->ip_alloc_sem);

 if (data_ac)
  ocfs2_free_alloc_context(data_ac);
 if (meta_ac)
  ocfs2_free_alloc_context(meta_ac);

 brelse(new_bh);

 return status;
}
