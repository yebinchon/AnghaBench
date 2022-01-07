
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct ocfs2_super {scalar_t__ first_cluster_group_blkno; } ;
struct ocfs2_group_desc {int bg_blkno; } ;


 int GFP_NOFS ;
 struct ocfs2_super* OCFS2_SB (struct super_block*) ;
 scalar_t__ le64_to_cpu (int ) ;
 scalar_t__ ocfs2_clusters_to_blocks (struct super_block*,int ) ;
 int sb_issue_discard (struct super_block*,scalar_t__,scalar_t__,int ,int ) ;
 int trace_ocfs2_trim_extent (struct super_block*,unsigned long long,scalar_t__) ;

__attribute__((used)) static int ocfs2_trim_extent(struct super_block *sb,
        struct ocfs2_group_desc *gd,
        u64 group, u32 start, u32 count)
{
 u64 discard, bcount;
 struct ocfs2_super *osb = OCFS2_SB(sb);

 bcount = ocfs2_clusters_to_blocks(sb, count);
 discard = ocfs2_clusters_to_blocks(sb, start);
 if (group != osb->first_cluster_group_blkno)
  discard += le64_to_cpu(gd->bg_blkno);

 trace_ocfs2_trim_extent(sb, (unsigned long long)discard, bcount);

 return sb_issue_discard(sb, discard, bcount, GFP_NOFS, 0);
}
