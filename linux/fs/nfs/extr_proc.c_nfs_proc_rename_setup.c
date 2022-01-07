
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int * rpc_proc; } ;
struct dentry {int dummy; } ;


 size_t NFSPROC_RENAME ;
 int * nfs_procedures ;

__attribute__((used)) static void
nfs_proc_rename_setup(struct rpc_message *msg,
  struct dentry *old_dentry,
  struct dentry *new_dentry)
{
 msg->rpc_proc = &nfs_procedures[NFSPROC_RENAME];
}
