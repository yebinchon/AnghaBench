
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_sb_info {scalar_t__ s_forced_ro; } ;
struct super_block {int dummy; } ;


 int SB_RDONLY ;
 struct sysv_sb_info* SYSV_SB (struct super_block*) ;
 int sync_filesystem (struct super_block*) ;

__attribute__((used)) static int sysv_remount(struct super_block *sb, int *flags, char *data)
{
 struct sysv_sb_info *sbi = SYSV_SB(sb);

 sync_filesystem(sb);
 if (sbi->s_forced_ro)
  *flags |= SB_RDONLY;
 return 0;
}
