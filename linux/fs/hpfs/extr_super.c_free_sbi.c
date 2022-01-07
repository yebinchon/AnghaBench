
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpfs_sb_info {struct hpfs_sb_info* sb_bmp_dir; struct hpfs_sb_info* sb_cp_table; } ;


 int kfree (struct hpfs_sb_info*) ;

__attribute__((used)) static void free_sbi(struct hpfs_sb_info *sbi)
{
 kfree(sbi->sb_cp_table);
 kfree(sbi->sb_bmp_dir);
 kfree(sbi);
}
