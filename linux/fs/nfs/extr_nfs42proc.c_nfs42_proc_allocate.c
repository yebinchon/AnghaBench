
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_message {int * rpc_proc; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int caps; } ;


 int EOPNOTSUPP ;
 size_t NFSPROC4_CLNT_ALLOCATE ;
 int NFS_CAP_ALLOCATE ;
 TYPE_1__* NFS_SERVER (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int nfs42_proc_fallocate (struct rpc_message*,struct file*,int ,int ) ;
 int * nfs4_procedures ;
 int nfs_server_capable (struct inode*,int ) ;

int nfs42_proc_allocate(struct file *filep, loff_t offset, loff_t len)
{
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_ALLOCATE],
 };
 struct inode *inode = file_inode(filep);
 int err;

 if (!nfs_server_capable(inode, NFS_CAP_ALLOCATE))
  return -EOPNOTSUPP;

 inode_lock(inode);

 err = nfs42_proc_fallocate(&msg, filep, offset, len);
 if (err == -EOPNOTSUPP)
  NFS_SERVER(inode)->caps &= ~NFS_CAP_ALLOCATE;

 inode_unlock(inode);
 return err;
}
