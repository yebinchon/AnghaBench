
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct jfs_log {int dummy; } ;
struct TYPE_2__ {struct jfs_log* log; } ;


 TYPE_1__* JFS_SBI (struct super_block*) ;
 int dquot_writeback_dquots (struct super_block*,int) ;
 int jfs_flush_journal (struct jfs_log*,int) ;
 int jfs_syncpt (struct jfs_log*,int ) ;

__attribute__((used)) static int jfs_sync_fs(struct super_block *sb, int wait)
{
 struct jfs_log *log = JFS_SBI(sb)->log;


 if (log) {




  dquot_writeback_dquots(sb, -1);
  jfs_flush_journal(log, wait);
  jfs_syncpt(log, 0);
 }

 return 0;
}
