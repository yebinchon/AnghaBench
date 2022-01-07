
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int ocfs2_extent_recs_per_gd (struct super_block*) ;

__attribute__((used)) static inline int ocfs2_calc_bg_discontig_credits(struct super_block *sb)
{
 return ocfs2_extent_recs_per_gd(sb);
}
