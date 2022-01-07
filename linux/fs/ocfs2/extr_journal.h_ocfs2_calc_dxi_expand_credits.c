
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int OCFS2_SUBALLOC_ALLOC ;
 scalar_t__ ocfs2_clusters_to_blocks (struct super_block*,int) ;
 scalar_t__ ocfs2_quota_trans_credits (struct super_block*) ;

__attribute__((used)) static inline int ocfs2_calc_dxi_expand_credits(struct super_block *sb)
{
 int credits = 1 + OCFS2_SUBALLOC_ALLOC;

 credits += ocfs2_clusters_to_blocks(sb, 1);
 credits += ocfs2_quota_trans_credits(sb);

 return credits;
}
