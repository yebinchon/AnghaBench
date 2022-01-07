
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tid_t ;
struct inode {int i_ctime; int i_mtime; int i_sb; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int commit_mutex; } ;


 int ASSERT (int) ;
 int COMMIT_Nolink ;
 int COMMIT_PWMAP ;
 int COMMIT_TRUNCATE ;
 int COMMIT_WMAP ;
 TYPE_1__* JFS_IP (struct inode*) ;
 int current_time (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_cflag (int ,struct inode*) ;
 int txBegin (int ,int ) ;
 int txCommit (int ,int,struct inode**,int ) ;
 int txEnd (int ) ;
 scalar_t__ xtTruncate (int ,struct inode*,scalar_t__,int) ;

void jfs_truncate_nolock(struct inode *ip, loff_t length)
{
 loff_t newsize;
 tid_t tid;

 ASSERT(length >= 0);

 if (test_cflag(COMMIT_Nolink, ip)) {
  xtTruncate(0, ip, length, COMMIT_WMAP);
  return;
 }

 do {
  tid = txBegin(ip->i_sb, 0);







  mutex_lock(&JFS_IP(ip)->commit_mutex);

  newsize = xtTruncate(tid, ip, length,
         COMMIT_TRUNCATE | COMMIT_PWMAP);
  if (newsize < 0) {
   txEnd(tid);
   mutex_unlock(&JFS_IP(ip)->commit_mutex);
   break;
  }

  ip->i_mtime = ip->i_ctime = current_time(ip);
  mark_inode_dirty(ip);

  txCommit(tid, 1, &ip, 0);
  txEnd(tid);
  mutex_unlock(&JFS_IP(ip)->commit_mutex);
 } while (newsize > length);
}
