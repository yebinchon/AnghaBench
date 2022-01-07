
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct jfs_sb_info {TYPE_1__* direct_inode; int ipimap; int ipbmap; struct jfs_log* log; } ;
struct jfs_log {int dummy; } ;
struct TYPE_2__ {int i_mapping; } ;


 int FM_CLEAN ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 int dbSync (int ) ;
 int diSync (int ) ;
 int filemap_write_and_wait (int ) ;
 int jfs_flush_journal (struct jfs_log*,int) ;
 int lmLogClose (struct super_block*) ;
 int updateSuper (struct super_block*,int ) ;

int jfs_umount_rw(struct super_block *sb)
{
 struct jfs_sb_info *sbi = JFS_SBI(sb);
 struct jfs_log *log = sbi->log;

 if (!log)
  return 0;






 jfs_flush_journal(log, 2);




 dbSync(sbi->ipbmap);
 diSync(sbi->ipimap);







 filemap_write_and_wait(sbi->direct_inode->i_mapping);

 updateSuper(sb, FM_CLEAN);

 return lmLogClose(sb);
}
