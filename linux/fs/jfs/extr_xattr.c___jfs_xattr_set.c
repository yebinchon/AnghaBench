
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tid_t ;
struct jfs_inode_info {int commit_mutex; } ;
struct inode {int i_sb; } ;


 struct jfs_inode_info* JFS_IP (struct inode*) ;
 int __jfs_setxattr (int ,struct inode*,char const*,void const*,size_t,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int txBegin (int ,int ) ;
 int txCommit (int ,int,struct inode**,int ) ;
 int txEnd (int ) ;

__attribute__((used)) static int __jfs_xattr_set(struct inode *inode, const char *name,
      const void *value, size_t size, int flags)
{
 struct jfs_inode_info *ji = JFS_IP(inode);
 tid_t tid;
 int rc;

 tid = txBegin(inode->i_sb, 0);
 mutex_lock(&ji->commit_mutex);
 rc = __jfs_setxattr(tid, inode, name, value, size, flags);
 if (!rc)
  rc = txCommit(tid, 1, &inode, 0);
 txEnd(tid);
 mutex_unlock(&ji->commit_mutex);

 return rc;
}
