
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct mq_attr {int dummy; } ;
struct ipc_namespace {scalar_t__ mq_queues_count; scalar_t__ mq_queues_max; } ;
struct inode {int i_atime; int i_mtime; int i_ctime; int i_size; int i_sb; } ;
struct dentry {TYPE_1__* d_parent; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int CAP_SYS_RESOURCE ;
 scalar_t__ DIRENT_SIZE ;
 int EACCES ;
 int ENOSPC ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 struct ipc_namespace* __get_ns_from_inode (struct inode*) ;
 int capable (int ) ;
 int current_time (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 int mq_lock ;
 struct inode* mqueue_get_inode (int ,struct ipc_namespace*,int ,struct mq_attr*) ;
 int put_ipc_ns (struct ipc_namespace*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mqueue_create_attr(struct dentry *dentry, umode_t mode, void *arg)
{
 struct inode *dir = dentry->d_parent->d_inode;
 struct inode *inode;
 struct mq_attr *attr = arg;
 int error;
 struct ipc_namespace *ipc_ns;

 spin_lock(&mq_lock);
 ipc_ns = __get_ns_from_inode(dir);
 if (!ipc_ns) {
  error = -EACCES;
  goto out_unlock;
 }

 if (ipc_ns->mq_queues_count >= ipc_ns->mq_queues_max &&
     !capable(CAP_SYS_RESOURCE)) {
  error = -ENOSPC;
  goto out_unlock;
 }
 ipc_ns->mq_queues_count++;
 spin_unlock(&mq_lock);

 inode = mqueue_get_inode(dir->i_sb, ipc_ns, mode, attr);
 if (IS_ERR(inode)) {
  error = PTR_ERR(inode);
  spin_lock(&mq_lock);
  ipc_ns->mq_queues_count--;
  goto out_unlock;
 }

 put_ipc_ns(ipc_ns);
 dir->i_size += DIRENT_SIZE;
 dir->i_ctime = dir->i_mtime = dir->i_atime = current_time(dir);

 d_instantiate(dentry, inode);
 dget(dentry);
 return 0;
out_unlock:
 spin_unlock(&mq_lock);
 if (ipc_ns)
  put_ipc_ns(ipc_ns);
 return error;
}
