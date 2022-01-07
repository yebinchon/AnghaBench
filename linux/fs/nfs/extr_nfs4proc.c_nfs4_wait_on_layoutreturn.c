
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct inode {int dummy; } ;


 int nfs_have_layout (struct inode*) ;
 int pnfs_wait_on_layoutreturn (struct inode*,struct rpc_task*) ;

__attribute__((used)) static bool
nfs4_wait_on_layoutreturn(struct inode *inode, struct rpc_task *task)
{
 if (inode == ((void*)0) || !nfs_have_layout(inode))
  return 0;

 return pnfs_wait_on_layoutreturn(inode, task);
}
