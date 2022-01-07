
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ umode_t ;
typedef int tid_t ;
struct posix_acl {int dummy; } ;
struct inode {scalar_t__ i_mode; int i_ctime; int i_sb; } ;
struct TYPE_2__ {int commit_mutex; } ;


 int ACL_TYPE_ACCESS ;
 TYPE_1__* JFS_IP (struct inode*) ;
 int __jfs_set_acl (int ,struct inode*,int,struct posix_acl*) ;
 int current_time (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int posix_acl_update_mode (struct inode*,scalar_t__*,struct posix_acl**) ;
 int txBegin (int ,int ) ;
 int txCommit (int ,int,struct inode**,int ) ;
 int txEnd (int ) ;

int jfs_set_acl(struct inode *inode, struct posix_acl *acl, int type)
{
 int rc;
 tid_t tid;
 int update_mode = 0;
 umode_t mode = inode->i_mode;

 tid = txBegin(inode->i_sb, 0);
 mutex_lock(&JFS_IP(inode)->commit_mutex);
 if (type == ACL_TYPE_ACCESS && acl) {
  rc = posix_acl_update_mode(inode, &mode, &acl);
  if (rc)
   goto end_tx;
  if (mode != inode->i_mode)
   update_mode = 1;
 }
 rc = __jfs_set_acl(tid, inode, type, acl);
 if (!rc) {
  if (update_mode) {
   inode->i_mode = mode;
   inode->i_ctime = current_time(inode);
   mark_inode_dirty(inode);
  }
  rc = txCommit(tid, 1, &inode, 0);
 }
end_tx:
 txEnd(tid);
 mutex_unlock(&JFS_IP(inode)->commit_mutex);
 return rc;
}
