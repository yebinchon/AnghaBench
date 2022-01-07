
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {scalar_t__ i_nlink; int i_sb; } ;
struct TYPE_2__ {int log; } ;


 int COMMIT_Dirty ;
 int EIO ;
 TYPE_1__* JFS_SBI (int ) ;
 scalar_t__ WB_SYNC_ALL ;
 scalar_t__ jfs_commit_inode (struct inode*,int) ;
 int jfs_err (char*) ;
 int jfs_flush_journal (int ,int) ;
 int test_cflag (int ,struct inode*) ;

int jfs_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 int wait = wbc->sync_mode == WB_SYNC_ALL;

 if (inode->i_nlink == 0)
  return 0;





 if (!test_cflag(COMMIT_Dirty, inode)) {

  jfs_flush_journal(JFS_SBI(inode->i_sb)->log, wait);
  return 0;
 }

 if (jfs_commit_inode(inode, wait)) {
  jfs_err("jfs_write_inode: jfs_commit_inode failed!");
  return -EIO;
 } else
  return 0;
}
