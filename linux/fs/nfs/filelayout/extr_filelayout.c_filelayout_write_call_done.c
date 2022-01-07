
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_3__ {int seq_res; } ;
struct nfs_pgio_header {TYPE_2__* mds_ops; TYPE_1__ res; int flags; } ;
struct TYPE_4__ {int (* rpc_call_done ) (struct rpc_task*,void*) ;} ;


 int NFS_IOHDR_REDO ;
 int nfs41_sequence_done (struct rpc_task*,int *) ;
 int stub1 (struct rpc_task*,void*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void filelayout_write_call_done(struct rpc_task *task, void *data)
{
 struct nfs_pgio_header *hdr = data;

 if (test_bit(NFS_IOHDR_REDO, &hdr->flags) &&
     task->tk_status == 0) {
  nfs41_sequence_done(task, &hdr->res.seq_res);
  return;
 }


 hdr->mds_ops->rpc_call_done(task, data);
}
