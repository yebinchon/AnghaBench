
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;
struct omfs_sb_info {struct omfs_sb_info* s_imap; } ;


 struct omfs_sb_info* OMFS_SB (struct super_block*) ;
 int kfree (struct omfs_sb_info*) ;

__attribute__((used)) static void omfs_put_super(struct super_block *sb)
{
 struct omfs_sb_info *sbi = OMFS_SB(sb);
 kfree(sbi->s_imap);
 kfree(sbi);
 sb->s_fs_info = ((void*)0);
}
