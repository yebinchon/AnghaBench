
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct jfs_sb_info {struct jfs_log* log; } ;
struct jfs_log {int dummy; } ;


 int FM_CLEAN ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 int jfs_err (char*) ;
 int jfs_error (struct super_block*,char*) ;
 int lmLogShutdown (struct jfs_log*) ;
 int sb_rdonly (struct super_block*) ;
 int txQuiesce (struct super_block*) ;
 int txResume (struct super_block*) ;
 int updateSuper (struct super_block*,int ) ;

__attribute__((used)) static int jfs_freeze(struct super_block *sb)
{
 struct jfs_sb_info *sbi = JFS_SBI(sb);
 struct jfs_log *log = sbi->log;
 int rc = 0;

 if (!sb_rdonly(sb)) {
  txQuiesce(sb);
  rc = lmLogShutdown(log);
  if (rc) {
   jfs_error(sb, "lmLogShutdown failed\n");


   txResume(sb);

   return rc;
  }
  rc = updateSuper(sb, FM_CLEAN);
  if (rc) {
   jfs_err("jfs_freeze: updateSuper failed");





  }
 }
 return 0;
}
