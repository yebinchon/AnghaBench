
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_dx_root_block {int dr_num_entries; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_leaf_bh; int * dl_prev_leaf_bh; struct buffer_head* dl_dx_root_bh; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int ENOSPC ;
 scalar_t__ OCFS2_DX_ENTRIES_MAX ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_dx_root_inline (struct ocfs2_dx_root_block*) ;
 int ocfs2_expand_inline_dx_root (struct inode*,struct buffer_head*) ;
 int ocfs2_extend_dir (struct ocfs2_super*,struct inode*,struct buffer_head*,int,struct ocfs2_dir_lookup_result*,struct buffer_head**) ;
 int ocfs2_find_dir_space_dx (struct ocfs2_super*,struct inode*,struct buffer_head*,struct buffer_head*,char const*,int,struct ocfs2_dir_lookup_result*) ;
 int ocfs2_inline_dx_has_space (struct buffer_head*) ;
 int ocfs2_read_dx_root (struct inode*,struct ocfs2_dinode*,struct buffer_head**) ;
 int ocfs2_search_dx_free_list (struct inode*,struct buffer_head*,int,struct ocfs2_dir_lookup_result*) ;

__attribute__((used)) static int ocfs2_prepare_dx_dir_for_insert(struct inode *dir,
        struct buffer_head *di_bh,
        const char *name,
        int namelen,
        struct ocfs2_dir_lookup_result *lookup)
{
 int ret, free_dx_root = 1;
 struct ocfs2_super *osb = OCFS2_SB(dir->i_sb);
 struct buffer_head *dx_root_bh = ((void*)0);
 struct buffer_head *leaf_bh = ((void*)0);
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
 struct ocfs2_dx_root_block *dx_root;

 ret = ocfs2_read_dx_root(dir, di, &dx_root_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 dx_root = (struct ocfs2_dx_root_block *)dx_root_bh->b_data;
 if (le32_to_cpu(dx_root->dr_num_entries) == OCFS2_DX_ENTRIES_MAX) {
  ret = -ENOSPC;
  mlog_errno(ret);
  goto out;
 }

 if (ocfs2_dx_root_inline(dx_root)) {
  ret = ocfs2_inline_dx_has_space(dx_root_bh);

  if (ret == 0)
   goto search_el;






  ret = ocfs2_expand_inline_dx_root(dir, dx_root_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }







 ret = ocfs2_find_dir_space_dx(osb, dir, di_bh, dx_root_bh, name,
          namelen, lookup);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

search_el:






 ret = ocfs2_search_dx_free_list(dir, dx_root_bh, namelen, lookup);
 if (ret && ret != -ENOSPC) {
  mlog_errno(ret);
  goto out;
 }


 lookup->dl_dx_root_bh = dx_root_bh;
 free_dx_root = 0;

 if (ret == -ENOSPC) {
  ret = ocfs2_extend_dir(osb, dir, di_bh, 1, lookup, &leaf_bh);

  if (ret) {
   mlog_errno(ret);
   goto out;
  }





  lookup->dl_prev_leaf_bh = ((void*)0);
  lookup->dl_leaf_bh = leaf_bh;
 }

out:
 if (free_dx_root)
  brelse(dx_root_bh);
 return ret;
}
