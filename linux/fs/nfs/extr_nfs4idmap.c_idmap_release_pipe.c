
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_inode {scalar_t__ private; } ;
struct inode {int dummy; } ;
struct idmap {int dummy; } ;


 int EPIPE ;
 struct rpc_inode* RPC_I (struct inode*) ;
 int nfs_idmap_abort_pipe_upcall (struct idmap*,int ) ;

__attribute__((used)) static void
idmap_release_pipe(struct inode *inode)
{
 struct rpc_inode *rpci = RPC_I(inode);
 struct idmap *idmap = (struct idmap *)rpci->private;

 nfs_idmap_abort_pipe_upcall(idmap, -EPIPE);
}
