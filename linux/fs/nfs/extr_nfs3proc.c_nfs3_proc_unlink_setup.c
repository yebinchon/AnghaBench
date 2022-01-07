
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int * rpc_proc; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 size_t NFS3PROC_REMOVE ;
 int * nfs3_procedures ;

__attribute__((used)) static void
nfs3_proc_unlink_setup(struct rpc_message *msg,
  struct dentry *dentry,
  struct inode *inode)
{
 msg->rpc_proc = &nfs3_procedures[NFS3PROC_REMOVE];
}
