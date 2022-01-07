
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct super_block {int dummy; } ;
struct msdos_sb_info {int sec_per_clus; } ;


 int GFP_NOFS ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int fat_clus_to_blknr (struct msdos_sb_info*,int) ;
 int sb_issue_discard (struct super_block*,int ,int,int ,int ) ;

__attribute__((used)) static int fat_trim_clusters(struct super_block *sb, u32 clus, u32 nr_clus)
{
 struct msdos_sb_info *sbi = MSDOS_SB(sb);
 return sb_issue_discard(sb, fat_clus_to_blknr(sbi, clus),
    nr_clus * sbi->sec_per_clus, GFP_NOFS, 0);
}
