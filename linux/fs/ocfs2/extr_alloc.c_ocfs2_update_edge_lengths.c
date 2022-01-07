
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ocfs2_path {int p_tree_depth; TYPE_1__* p_node; } ;
struct ocfs2_extent_tree {int et_ci; } ;
struct ocfs2_extent_rec {int e_cpos; int e_int_clusters; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int l_next_free_rec; } ;
struct ocfs2_extent_block {unsigned long long h_next_leaf_blk; struct ocfs2_extent_list h_list; } ;
typedef int handle_t ;
struct TYPE_4__ {scalar_t__ b_data; } ;
struct TYPE_3__ {int bh; struct ocfs2_extent_list* el; } ;


 int BUG_ON (int) ;
 int cpu_to_le32 (scalar_t__) ;
 int le16_to_cpu (int ) ;
 int le32_add_cpu (int *,int ) ;
 int le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_journal_access_path (int ,int *,struct ocfs2_path*) ;
 int ocfs2_journal_dirty (int *,int ) ;
 scalar_t__ ocfs2_rec_clusters (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ;
 TYPE_2__* path_leaf_bh (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_update_edge_lengths(handle_t *handle,
         struct ocfs2_extent_tree *et,
         struct ocfs2_path *path)
{
 int i, idx, ret;
 struct ocfs2_extent_rec *rec;
 struct ocfs2_extent_list *el;
 struct ocfs2_extent_block *eb;
 u32 range;

 ret = ocfs2_journal_access_path(et->et_ci, handle, path);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }


 eb = (struct ocfs2_extent_block *)path_leaf_bh(path)->b_data;
 BUG_ON(eb->h_next_leaf_blk != 0ULL);

 el = &eb->h_list;
 BUG_ON(le16_to_cpu(el->l_next_free_rec) == 0);
 idx = le16_to_cpu(el->l_next_free_rec) - 1;
 rec = &el->l_recs[idx];
 range = le32_to_cpu(rec->e_cpos) + ocfs2_rec_clusters(el, rec);

 for (i = 0; i < path->p_tree_depth; i++) {
  el = path->p_node[i].el;
  idx = le16_to_cpu(el->l_next_free_rec) - 1;
  rec = &el->l_recs[idx];

  rec->e_int_clusters = cpu_to_le32(range);
  le32_add_cpu(&rec->e_int_clusters, -le32_to_cpu(rec->e_cpos));

  ocfs2_journal_dirty(handle, path->p_node[i].bh);
 }
out:
 return ret;
}
