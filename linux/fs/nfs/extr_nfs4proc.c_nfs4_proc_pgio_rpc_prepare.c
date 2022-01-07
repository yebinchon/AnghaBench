
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_5__ {TYPE_3__* context; int lock_context; int stateid; int seq_args; } ;
struct TYPE_6__ {int seq_res; } ;
struct nfs_pgio_header {TYPE_1__ args; int rw_mode; TYPE_2__ res; int inode; } ;
struct TYPE_8__ {int nfs_client; } ;
struct TYPE_7__ {int flags; } ;


 int EIO ;
 int NFS_CONTEXT_BAD ;
 TYPE_4__* NFS_SERVER (int ) ;
 int nfs4_set_rw_stateid (int *,TYPE_3__*,int ,int ) ;
 scalar_t__ nfs4_setup_sequence (int ,int *,int *,struct rpc_task*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int nfs4_proc_pgio_rpc_prepare(struct rpc_task *task,
          struct nfs_pgio_header *hdr)
{
 if (nfs4_setup_sequence(NFS_SERVER(hdr->inode)->nfs_client,
   &hdr->args.seq_args,
   &hdr->res.seq_res,
   task))
  return 0;
 if (nfs4_set_rw_stateid(&hdr->args.stateid, hdr->args.context,
    hdr->args.lock_context,
    hdr->rw_mode) == -EIO)
  return -EIO;
 if (unlikely(test_bit(NFS_CONTEXT_BAD, &hdr->args.context->flags)))
  return -EIO;
 return 0;
}
