
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tid_t ;
struct inode {scalar_t__ i_nlink; int i_sb; int i_mode; } ;
struct TYPE_2__ {int commit_mutex; } ;


 int COMMIT_Dirty ;
 int COMMIT_INODE ;
 int COMMIT_SYNC ;
 TYPE_1__* JFS_IP (struct inode*) ;
 scalar_t__ isReadOnly (struct inode*) ;
 int jfs_err (char*,...) ;
 int jfs_info (char*,struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int special_file (int ) ;
 scalar_t__ test_cflag (int ,struct inode*) ;
 int txBegin (int ,int ) ;
 int txCommit (int ,int,struct inode**,int ) ;
 int txEnd (int ) ;

int jfs_commit_inode(struct inode *inode, int wait)
{
 int rc = 0;
 tid_t tid;
 static int noisy = 5;

 jfs_info("In jfs_commit_inode, inode = 0x%p", inode);





 if (inode->i_nlink == 0 || !test_cflag(COMMIT_Dirty, inode))
  return 0;

 if (isReadOnly(inode)) {



  if (!special_file(inode->i_mode) && noisy) {
   jfs_err("jfs_commit_inode(0x%p) called on read-only volume",
    inode);
   jfs_err("Is remount racy?");
   noisy--;
  }
  return 0;
 }

 tid = txBegin(inode->i_sb, COMMIT_INODE);
 mutex_lock(&JFS_IP(inode)->commit_mutex);




 if (inode->i_nlink && test_cflag(COMMIT_Dirty, inode))
  rc = txCommit(tid, 1, &inode, wait ? COMMIT_SYNC : 0);

 txEnd(tid);
 mutex_unlock(&JFS_IP(inode)->commit_mutex);
 return rc;
}
