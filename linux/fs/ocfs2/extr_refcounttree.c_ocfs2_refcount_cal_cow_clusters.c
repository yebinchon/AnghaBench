
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ocfs2_extent_rec {int e_flags; int e_cpos; scalar_t__ e_leaf_clusters; } ;
struct ocfs2_extent_list {scalar_t__ l_next_free_rec; struct ocfs2_extent_rec* l_recs; scalar_t__ l_tree_depth; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; scalar_t__ h_next_leaf_blk; } ;
struct inode {int i_sb; int i_ino; } ;
struct buffer_head {scalar_t__ b_data; scalar_t__ b_blocknr; } ;


 int BUG_ON (int) ;
 int INODE_CACHE (struct inode*) ;
 int OCFS2_EXT_REFCOUNTED ;
 int brelse (struct buffer_head*) ;
 int le16_to_cpu (scalar_t__) ;
 unsigned int le32_to_cpu (int ) ;
 int le64_to_cpu (scalar_t__) ;
 int mlog_bug_on_msg (int,char*,int ,int) ;
 int mlog_errno (int) ;
 unsigned int ocfs2_cow_align_length (int ,unsigned int) ;
 unsigned int ocfs2_cow_align_start (int ,unsigned int,unsigned int) ;
 int ocfs2_cow_contig_clusters (int ) ;
 int ocfs2_error (int ,char*,int ,unsigned long long) ;
 int ocfs2_find_leaf (int ,struct ocfs2_extent_list*,unsigned int,struct buffer_head**) ;
 scalar_t__ ocfs2_is_empty_extent (struct ocfs2_extent_rec*) ;
 int ocfs2_read_extent_block (int ,int ,struct buffer_head**) ;

__attribute__((used)) static int ocfs2_refcount_cal_cow_clusters(struct inode *inode,
        struct ocfs2_extent_list *el,
        u32 cpos,
        u32 write_len,
        u32 max_cpos,
        u32 *cow_start,
        u32 *cow_len)
{
 int ret = 0;
 int tree_height = le16_to_cpu(el->l_tree_depth), i;
 struct buffer_head *eb_bh = ((void*)0);
 struct ocfs2_extent_block *eb = ((void*)0);
 struct ocfs2_extent_rec *rec;
 unsigned int want_clusters, rec_end = 0;
 int contig_clusters = ocfs2_cow_contig_clusters(inode->i_sb);
 int leaf_clusters;

 BUG_ON(cpos + write_len > max_cpos);

 if (tree_height > 0) {
  ret = ocfs2_find_leaf(INODE_CACHE(inode), el, cpos, &eb_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  eb = (struct ocfs2_extent_block *) eb_bh->b_data;
  el = &eb->h_list;

  if (el->l_tree_depth) {
   ret = ocfs2_error(inode->i_sb,
       "Inode %lu has non zero tree depth in leaf block %llu\n",
       inode->i_ino,
       (unsigned long long)eb_bh->b_blocknr);
   goto out;
  }
 }

 *cow_len = 0;
 for (i = 0; i < le16_to_cpu(el->l_next_free_rec); i++) {
  rec = &el->l_recs[i];

  if (ocfs2_is_empty_extent(rec)) {
   mlog_bug_on_msg(i != 0, "Inode %lu has empty record in "
     "index %d\n", inode->i_ino, i);
   continue;
  }

  if (le32_to_cpu(rec->e_cpos) +
      le16_to_cpu(rec->e_leaf_clusters) <= cpos)
   continue;

  if (*cow_len == 0) {




   BUG_ON(!(rec->e_flags & OCFS2_EXT_REFCOUNTED));
   *cow_start = le32_to_cpu(rec->e_cpos);
  }





  if ((!(rec->e_flags & OCFS2_EXT_REFCOUNTED)) ||
      (*cow_len && rec_end != le32_to_cpu(rec->e_cpos)) ||
      (max_cpos <= le32_to_cpu(rec->e_cpos)))
   break;

  leaf_clusters = le16_to_cpu(rec->e_leaf_clusters);
  rec_end = le32_to_cpu(rec->e_cpos) + leaf_clusters;
  if (rec_end > max_cpos) {
   rec_end = max_cpos;
   leaf_clusters = rec_end - le32_to_cpu(rec->e_cpos);
  }







  if (!*cow_len)
   want_clusters = write_len;
  else
   want_clusters = (cpos + write_len) -
    (*cow_start + *cow_len);
  if (want_clusters < contig_clusters)
   want_clusters = contig_clusters;
  if (leaf_clusters <= contig_clusters)
   *cow_len += leaf_clusters;
  else if (*cow_len || (*cow_start == cpos)) {







   want_clusters = ocfs2_cow_align_length(inode->i_sb,
              want_clusters);

   if (leaf_clusters < want_clusters)
    *cow_len += leaf_clusters;
   else
    *cow_len += want_clusters;
  } else if ((*cow_start + contig_clusters) >=
      (cpos + write_len)) {





   *cow_len = contig_clusters;
  } else if ((rec_end - cpos) <= contig_clusters) {




   *cow_start = rec_end - contig_clusters;
   *cow_len = contig_clusters;
  } else if ((rec_end - cpos) <= want_clusters) {
   *cow_start = ocfs2_cow_align_start(inode->i_sb,
          *cow_start, cpos);
   *cow_len = rec_end - *cow_start;
  } else {
   *cow_start = ocfs2_cow_align_start(inode->i_sb,
          *cow_start, cpos);

   want_clusters = (cpos + write_len) - *cow_start;
   want_clusters = ocfs2_cow_align_length(inode->i_sb,
              want_clusters);
   if (*cow_start + want_clusters <= rec_end)
    *cow_len = want_clusters;
   else
    *cow_len = rec_end - *cow_start;
  }


  if ((*cow_start + *cow_len) >= (cpos + write_len))
   break;





  if (i + 1 == le16_to_cpu(el->l_next_free_rec) &&
      eb && eb->h_next_leaf_blk) {
   brelse(eb_bh);
   eb_bh = ((void*)0);

   ret = ocfs2_read_extent_block(INODE_CACHE(inode),
            le64_to_cpu(eb->h_next_leaf_blk),
            &eb_bh);
   if (ret) {
    mlog_errno(ret);
    goto out;
   }

   eb = (struct ocfs2_extent_block *) eb_bh->b_data;
   el = &eb->h_list;
   i = -1;
  }
 }

out:
 brelse(eb_bh);
 return ret;
}
