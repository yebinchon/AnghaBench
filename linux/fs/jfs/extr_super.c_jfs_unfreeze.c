
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct jfs_sb_info {struct jfs_log* log; } ;
struct jfs_log {int dummy; } ;


 int FM_MOUNT ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 int jfs_error (struct super_block*,char*) ;
 int lmLogInit (struct jfs_log*) ;
 int sb_rdonly (struct super_block*) ;
 int txResume (struct super_block*) ;
 int updateSuper (struct super_block*,int ) ;

__attribute__((used)) static int jfs_unfreeze(struct super_block *sb)
{
 struct jfs_sb_info *sbi = JFS_SBI(sb);
 struct jfs_log *log = sbi->log;
 int rc = 0;

 if (!sb_rdonly(sb)) {
  rc = updateSuper(sb, FM_MOUNT);
  if (rc) {
   jfs_error(sb, "updateSuper failed\n");
   goto out;
  }
  rc = lmLogInit(log);
  if (rc)
   jfs_error(sb, "lmLogInit failed\n");
out:
  txResume(sb);
 }
 return rc;
}
