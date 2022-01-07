
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_sb_info {struct ufs_sb_info* s_uspi; int sync_work; } ;
struct super_block {int * s_fs_info; } ;


 int UFSD (char*) ;
 struct ufs_sb_info* UFS_SB (struct super_block*) ;
 int cancel_delayed_work_sync (int *) ;
 int kfree (struct ufs_sb_info*) ;
 int sb_rdonly (struct super_block*) ;
 int ubh_brelse_uspi (struct ufs_sb_info*) ;
 int ufs_put_super_internal (struct super_block*) ;

__attribute__((used)) static void ufs_put_super(struct super_block *sb)
{
 struct ufs_sb_info * sbi = UFS_SB(sb);

 UFSD("ENTER\n");

 if (!sb_rdonly(sb))
  ufs_put_super_internal(sb);
 cancel_delayed_work_sync(&sbi->sync_work);

 ubh_brelse_uspi (sbi->s_uspi);
 kfree (sbi->s_uspi);
 kfree (sbi);
 sb->s_fs_info = ((void*)0);
 UFSD("EXIT\n");
 return;
}
