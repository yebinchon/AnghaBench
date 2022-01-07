
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msdos_sb_info {int cluster_bits; } ;
struct inode {int i_size; int i_sb; } ;
struct TYPE_2__ {scalar_t__ i_start; } ;


 int FAT_ENT_EOF ;
 TYPE_1__* MSDOS_I (struct inode*) ;
 struct msdos_sb_info* MSDOS_SB (int ) ;
 int fat_get_cluster (struct inode*,int ,int*,int*) ;

__attribute__((used)) static int fat_calc_dir_size(struct inode *inode)
{
 struct msdos_sb_info *sbi = MSDOS_SB(inode->i_sb);
 int ret, fclus, dclus;

 inode->i_size = 0;
 if (MSDOS_I(inode)->i_start == 0)
  return 0;

 ret = fat_get_cluster(inode, FAT_ENT_EOF, &fclus, &dclus);
 if (ret < 0)
  return ret;
 inode->i_size = (fclus + 1) << sbi->cluster_bits;

 return 0;
}
