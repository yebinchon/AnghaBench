
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct msdos_sb_info {int rcu; int fat_inode; int fsinfo_inode; } ;


 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int call_rcu (int *,int ) ;
 int delayed_free ;
 int fat_set_state (struct super_block*,int ,int ) ;
 int iput (int ) ;

__attribute__((used)) static void fat_put_super(struct super_block *sb)
{
 struct msdos_sb_info *sbi = MSDOS_SB(sb);

 fat_set_state(sb, 0, 0);

 iput(sbi->fsinfo_inode);
 iput(sbi->fat_inode);

 call_rcu(&sbi->rcu, delayed_free);
}
