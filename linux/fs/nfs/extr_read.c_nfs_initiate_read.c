
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task_setup {int flags; } ;
struct rpc_message {int dummy; } ;
struct nfs_rpc_ops {int (* read_setup ) (struct nfs_pgio_header*,struct rpc_message*) ;} ;
struct nfs_pgio_header {int good_bytes; int io_start; struct inode* inode; } ;
struct inode {int dummy; } ;


 scalar_t__ IS_SWAPFILE (struct inode*) ;
 int NFS_RPC_SWAPFLAGS ;
 int stub1 (struct nfs_pgio_header*,struct rpc_message*) ;
 int trace_nfs_initiate_read (struct inode*,int ,int ) ;

__attribute__((used)) static void nfs_initiate_read(struct nfs_pgio_header *hdr,
         struct rpc_message *msg,
         const struct nfs_rpc_ops *rpc_ops,
         struct rpc_task_setup *task_setup_data, int how)
{
 struct inode *inode = hdr->inode;
 int swap_flags = IS_SWAPFILE(inode) ? NFS_RPC_SWAPFLAGS : 0;

 task_setup_data->flags |= swap_flags;
 rpc_ops->read_setup(hdr, msg);
 trace_nfs_initiate_read(inode, hdr->io_start, hdr->good_bytes);
}
