
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_5__ {int rflags; int server; TYPE_1__* f_attr; int seq_res; } ;
struct nfs4_opendata {scalar_t__ rpc_status; int rpc_done; TYPE_3__* owner; TYPE_2__ o_res; int timestamp; } ;
struct TYPE_6__ {int so_seqid; } ;
struct TYPE_4__ {int valid; int mode; } ;


 scalar_t__ EISDIR ;
 scalar_t__ ELOOP ;
 scalar_t__ ENOTDIR ;
 int NFS4_OPEN_RESULT_CONFIRM ;
 int NFS_ATTR_FATTR_TYPE ;


 int S_IFMT ;

 int nfs4_sequence_process (struct rpc_task*,int *) ;
 int nfs_confirm_seqid (int *,int ) ;
 int renew_lease (int ,int ) ;

__attribute__((used)) static void nfs4_open_done(struct rpc_task *task, void *calldata)
{
 struct nfs4_opendata *data = calldata;

 data->rpc_status = task->tk_status;

 if (!nfs4_sequence_process(task, &data->o_res.seq_res))
  return;

 if (task->tk_status == 0) {
  if (data->o_res.f_attr->valid & NFS_ATTR_FATTR_TYPE) {
   switch (data->o_res.f_attr->mode & S_IFMT) {
   case 128:
    break;
   case 129:
    data->rpc_status = -ELOOP;
    break;
   case 130:
    data->rpc_status = -EISDIR;
    break;
   default:
    data->rpc_status = -ENOTDIR;
   }
  }
  renew_lease(data->o_res.server, data->timestamp);
  if (!(data->o_res.rflags & NFS4_OPEN_RESULT_CONFIRM))
   nfs_confirm_seqid(&data->owner->so_seqid, 0);
 }
 data->rpc_done = 1;
}
