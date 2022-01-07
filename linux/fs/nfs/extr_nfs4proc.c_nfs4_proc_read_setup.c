
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_message {int * rpc_proc; } ;
struct TYPE_4__ {int seq_res; } ;
struct TYPE_3__ {int seq_args; } ;
struct nfs_pgio_header {TYPE_2__ res; TYPE_1__ args; scalar_t__ pgio_done_cb; int timestamp; } ;


 size_t NFSPROC4_CLNT_READ ;
 int jiffies ;
 int nfs4_init_sequence (int *,int *,int ,int ) ;
 int * nfs4_procedures ;
 scalar_t__ nfs4_read_done_cb ;

__attribute__((used)) static void nfs4_proc_read_setup(struct nfs_pgio_header *hdr,
     struct rpc_message *msg)
{
 hdr->timestamp = jiffies;
 if (!hdr->pgio_done_cb)
  hdr->pgio_done_cb = nfs4_read_done_cb;
 msg->rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_READ];
 nfs4_init_sequence(&hdr->args.seq_args, &hdr->res.seq_res, 0, 0);
}
