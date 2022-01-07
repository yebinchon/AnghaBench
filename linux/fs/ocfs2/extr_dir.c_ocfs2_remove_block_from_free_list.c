
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dx_root_block {int dr_free_blk; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_leaf_bh; struct buffer_head* dl_prev_leaf_bh; struct buffer_head* dl_dx_root_bh; } ;
struct ocfs2_dir_block_trailer {int db_free_next; int db_free_rec_len; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 int cpu_to_le16 (int ) ;
 int cpu_to_le64 (int ) ;
 scalar_t__ ocfs2_free_list_at_root (struct ocfs2_dir_lookup_result*) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 struct ocfs2_dir_block_trailer* ocfs2_trailer_from_bh (struct buffer_head*,int ) ;

__attribute__((used)) static void ocfs2_remove_block_from_free_list(struct inode *dir,
           handle_t *handle,
           struct ocfs2_dir_lookup_result *lookup)
{
 struct ocfs2_dir_block_trailer *trailer, *prev;
 struct ocfs2_dx_root_block *dx_root;
 struct buffer_head *bh;

 trailer = ocfs2_trailer_from_bh(lookup->dl_leaf_bh, dir->i_sb);

 if (ocfs2_free_list_at_root(lookup)) {
  bh = lookup->dl_dx_root_bh;
  dx_root = (struct ocfs2_dx_root_block *)bh->b_data;
  dx_root->dr_free_blk = trailer->db_free_next;
 } else {
  bh = lookup->dl_prev_leaf_bh;
  prev = ocfs2_trailer_from_bh(bh, dir->i_sb);
  prev->db_free_next = trailer->db_free_next;
 }

 trailer->db_free_rec_len = cpu_to_le16(0);
 trailer->db_free_next = cpu_to_le64(0);

 ocfs2_journal_dirty(handle, bh);
 ocfs2_journal_dirty(handle, lookup->dl_leaf_bh);
}
