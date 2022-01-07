
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ocfs2_extent_rec {int e_blkno; int e_cpos; } ;
struct ocfs2_extent_list {int dummy; } ;
struct inode {int i_sb; } ;


 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 scalar_t__ ocfs2_clusters_to_blocks (int ,scalar_t__) ;
 scalar_t__ ocfs2_rec_clusters (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ;

__attribute__((used)) static void ocfs2_calc_trunc_pos(struct inode *inode,
     struct ocfs2_extent_list *el,
     struct ocfs2_extent_rec *rec,
     u32 trunc_start, u32 *trunc_cpos,
     u32 *trunc_len, u32 *trunc_end,
     u64 *blkno, int *done)
{
 int ret = 0;
 u32 coff, range;

 range = le32_to_cpu(rec->e_cpos) + ocfs2_rec_clusters(el, rec);

 if (le32_to_cpu(rec->e_cpos) >= trunc_start) {



  *trunc_cpos = le32_to_cpu(rec->e_cpos);



  if (range < *trunc_end)
   *trunc_end = range;
  *trunc_len = *trunc_end - le32_to_cpu(rec->e_cpos);
  *blkno = le64_to_cpu(rec->e_blkno);
  *trunc_end = le32_to_cpu(rec->e_cpos);
 } else if (range > trunc_start) {




  *trunc_cpos = trunc_start;



  if (range < *trunc_end)
   *trunc_end = range;
  *trunc_len = *trunc_end - trunc_start;
  coff = trunc_start - le32_to_cpu(rec->e_cpos);
  *blkno = le64_to_cpu(rec->e_blkno) +
    ocfs2_clusters_to_blocks(inode->i_sb, coff);
  *trunc_end = trunc_start;
 } else {
  ret = 1;
 }

 *done = ret;
}
