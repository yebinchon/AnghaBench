
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_message {int * rpc_proc; } ;
struct rpc_clnt {int dummy; } ;
struct TYPE_2__ {int stable; } ;
struct nfs_pgio_header {TYPE_1__ args; } ;


 size_t NFSPROC_WRITE ;
 int NFS_FILE_SYNC ;
 int * nfs_procedures ;

__attribute__((used)) static void nfs_proc_write_setup(struct nfs_pgio_header *hdr,
     struct rpc_message *msg,
     struct rpc_clnt **clnt)
{

 hdr->args.stable = NFS_FILE_SYNC;
 msg->rpc_proc = &nfs_procedures[NFSPROC_WRITE];
}
