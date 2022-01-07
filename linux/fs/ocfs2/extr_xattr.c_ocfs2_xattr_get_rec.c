
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct ocfs2_extent_rec {int e_cpos; int e_leaf_clusters; int e_blkno; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int l_next_free_rec; scalar_t__ l_tree_depth; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; } ;
struct inode {int i_ino; int i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;


 int INODE_CACHE (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_error (int ,char*,int ,unsigned long long,...) ;
 int ocfs2_find_leaf (int ,struct ocfs2_extent_list*,int ,struct buffer_head**) ;
 int ocfs2_rec_clusters (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ;

__attribute__((used)) static int ocfs2_xattr_get_rec(struct inode *inode,
          u32 name_hash,
          u64 *p_blkno,
          u32 *e_cpos,
          u32 *num_clusters,
          struct ocfs2_extent_list *el)
{
 int ret = 0, i;
 struct buffer_head *eb_bh = ((void*)0);
 struct ocfs2_extent_block *eb;
 struct ocfs2_extent_rec *rec = ((void*)0);
 u64 e_blkno = 0;

 if (el->l_tree_depth) {
  ret = ocfs2_find_leaf(INODE_CACHE(inode), el, name_hash,
          &eb_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  eb = (struct ocfs2_extent_block *) eb_bh->b_data;
  el = &eb->h_list;

  if (el->l_tree_depth) {
   ret = ocfs2_error(inode->i_sb,
       "Inode %lu has non zero tree depth in xattr tree block %llu\n",
       inode->i_ino,
       (unsigned long long)eb_bh->b_blocknr);
   goto out;
  }
 }

 for (i = le16_to_cpu(el->l_next_free_rec) - 1; i >= 0; i--) {
  rec = &el->l_recs[i];

  if (le32_to_cpu(rec->e_cpos) <= name_hash) {
   e_blkno = le64_to_cpu(rec->e_blkno);
   break;
  }
 }

 if (!e_blkno) {
  ret = ocfs2_error(inode->i_sb, "Inode %lu has bad extent record (%u, %u, 0) in xattr\n",
      inode->i_ino,
      le32_to_cpu(rec->e_cpos),
      ocfs2_rec_clusters(el, rec));
  goto out;
 }

 *p_blkno = le64_to_cpu(rec->e_blkno);
 *num_clusters = le16_to_cpu(rec->e_leaf_clusters);
 if (e_cpos)
  *e_cpos = le32_to_cpu(rec->e_cpos);
out:
 brelse(eb_bh);
 return ret;
}
