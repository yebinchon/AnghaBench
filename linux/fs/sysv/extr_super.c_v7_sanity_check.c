
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v7_super_block {int s_fsize; int s_ninode; int s_nfree; } ;
struct sysv_sb_info {int dummy; } ;
struct sysv_inode {int i_size; int i_mode; } ;
struct sysv_dir_entry {int dummy; } ;
struct super_block {struct sysv_sb_info* s_fs_info; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int S_IFDIR ;
 int V7_MAXSIZE ;
 int V7_NFILES ;
 int V7_NICFREE ;
 int V7_NICINOD ;
 int brelse (struct buffer_head*) ;
 int fs16_to_cpu (struct sysv_sb_info*,int ) ;
 int fs32_to_cpu (struct sysv_sb_info*,int ) ;
 struct buffer_head* sb_bread (struct super_block*,int) ;

__attribute__((used)) static int v7_sanity_check(struct super_block *sb, struct buffer_head *bh)
{
 struct v7_super_block *v7sb;
 struct sysv_inode *v7i;
 struct buffer_head *bh2;
 struct sysv_sb_info *sbi;

 sbi = sb->s_fs_info;


 v7sb = (struct v7_super_block *) bh->b_data;
 if (fs16_to_cpu(sbi, v7sb->s_nfree) > V7_NICFREE ||
     fs16_to_cpu(sbi, v7sb->s_ninode) > V7_NICINOD ||
     fs32_to_cpu(sbi, v7sb->s_fsize) > V7_MAXSIZE)
  return 0;



 bh2 = sb_bread(sb, 2);
 if (bh2 == ((void*)0))
  return 0;

 v7i = (struct sysv_inode *)(bh2->b_data + 64);
 if ((fs16_to_cpu(sbi, v7i->i_mode) & ~0777) != S_IFDIR ||
     (fs32_to_cpu(sbi, v7i->i_size) == 0) ||
     (fs32_to_cpu(sbi, v7i->i_size) & 017) ||
     (fs32_to_cpu(sbi, v7i->i_size) > V7_NFILES *
      sizeof(struct sysv_dir_entry))) {
  brelse(bh2);
  return 0;
 }

 brelse(bh2);
 return 1;
}
