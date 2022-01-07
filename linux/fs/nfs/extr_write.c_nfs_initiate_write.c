
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task_setup {int priority; int rpc_client; } ;
struct rpc_message {int dummy; } ;
struct nfs_rpc_ops {int (* write_setup ) (struct nfs_pgio_header*,struct rpc_message*,int *) ;} ;
struct TYPE_2__ {int stable; } ;
struct nfs_pgio_header {TYPE_1__ args; int good_bytes; int io_start; int inode; } ;


 int flush_task_priority (int) ;
 int stub1 (struct nfs_pgio_header*,struct rpc_message*,int *) ;
 int trace_nfs_initiate_write (int ,int ,int ,int ) ;

__attribute__((used)) static void nfs_initiate_write(struct nfs_pgio_header *hdr,
          struct rpc_message *msg,
          const struct nfs_rpc_ops *rpc_ops,
          struct rpc_task_setup *task_setup_data, int how)
{
 int priority = flush_task_priority(how);

 task_setup_data->priority = priority;
 rpc_ops->write_setup(hdr, msg, &task_setup_data->rpc_client);
 trace_nfs_initiate_write(hdr->inode, hdr->io_start, hdr->good_bytes,
     hdr->args.stable);
}
