
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v7_super_block {int s_fsize; int s_isize; int s_time; int s_tfree; int * s_free; int s_nfree; int s_tinode; int * s_inode; int s_ninode; } ;
struct sysv_sb_info {char* s_sbd1; char* s_sbd2; int s_nzones; int s_firstdatazone; int * s_sb_time; int * s_free_blocks; int * s_bcache; int * s_bcache_count; int * s_sb_total_free_inodes; int * s_sb_fic_inodes; int * s_sb_fic_count; int s_flc_size; int s_fic_size; struct buffer_head* s_bh2; } ;
struct buffer_head {scalar_t__ b_data; } ;


 unsigned int V7_LINK_MAX ;
 int V7_NICFREE ;
 int V7_NICINOD ;
 int fs16_to_cpu (struct sysv_sb_info*,int ) ;
 int fs32_to_cpu (struct sysv_sb_info*,int ) ;

__attribute__((used)) static void detected_v7(struct sysv_sb_info *sbi, unsigned *max_links)
{
 struct buffer_head *bh2 = sbi->s_bh2;
 struct v7_super_block *sbd = (struct v7_super_block *)bh2->b_data;

 *max_links = V7_LINK_MAX;
 sbi->s_fic_size = V7_NICINOD;
 sbi->s_flc_size = V7_NICFREE;
 sbi->s_sbd1 = (char *)sbd;
 sbi->s_sbd2 = (char *)sbd;
 sbi->s_sb_fic_count = &sbd->s_ninode;
 sbi->s_sb_fic_inodes = &sbd->s_inode[0];
 sbi->s_sb_total_free_inodes = &sbd->s_tinode;
 sbi->s_bcache_count = &sbd->s_nfree;
 sbi->s_bcache = &sbd->s_free[0];
 sbi->s_free_blocks = &sbd->s_tfree;
 sbi->s_sb_time = &sbd->s_time;
 sbi->s_firstdatazone = fs16_to_cpu(sbi, sbd->s_isize);
 sbi->s_nzones = fs32_to_cpu(sbi, sbd->s_fsize);
}
