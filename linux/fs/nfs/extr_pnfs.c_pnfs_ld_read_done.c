
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_pgio_header {TYPE_1__* mds_ops; int pnfs_error; int task; } ;
struct TYPE_2__ {int (* rpc_release ) (struct nfs_pgio_header*) ;int (* rpc_call_done ) (int *,struct nfs_pgio_header*) ;} ;


 scalar_t__ likely (int) ;
 int pnfs_ld_handle_read_error (struct nfs_pgio_header*) ;
 int stub1 (int *,struct nfs_pgio_header*) ;
 int stub2 (struct nfs_pgio_header*) ;
 int trace_nfs4_pnfs_read (struct nfs_pgio_header*,int ) ;
 scalar_t__ unlikely (int ) ;

void pnfs_ld_read_done(struct nfs_pgio_header *hdr)
{
 if (likely(!hdr->pnfs_error))
  hdr->mds_ops->rpc_call_done(&hdr->task, hdr);
 trace_nfs4_pnfs_read(hdr, hdr->pnfs_error);
 if (unlikely(hdr->pnfs_error))
  pnfs_ld_handle_read_error(hdr);
 hdr->mds_ops->rpc_release(hdr);
}
