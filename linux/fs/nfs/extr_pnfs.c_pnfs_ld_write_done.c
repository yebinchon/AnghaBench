
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; } ;
struct nfs_pgio_header {TYPE_2__* mds_ops; int pnfs_error; int task; TYPE_1__ res; scalar_t__ mds_offset; int lseg; int inode; } ;
struct TYPE_4__ {int (* rpc_release ) (struct nfs_pgio_header*) ;int (* rpc_call_done ) (int *,struct nfs_pgio_header*) ;} ;


 scalar_t__ likely (int) ;
 int pnfs_ld_handle_write_error (struct nfs_pgio_header*) ;
 int pnfs_set_layoutcommit (int ,int ,scalar_t__) ;
 int stub1 (int *,struct nfs_pgio_header*) ;
 int stub2 (struct nfs_pgio_header*) ;
 int trace_nfs4_pnfs_write (struct nfs_pgio_header*,int ) ;
 scalar_t__ unlikely (int ) ;

void pnfs_ld_write_done(struct nfs_pgio_header *hdr)
{
 if (likely(!hdr->pnfs_error)) {
  pnfs_set_layoutcommit(hdr->inode, hdr->lseg,
    hdr->mds_offset + hdr->res.count);
  hdr->mds_ops->rpc_call_done(&hdr->task, hdr);
 }
 trace_nfs4_pnfs_write(hdr, hdr->pnfs_error);
 if (unlikely(hdr->pnfs_error))
  pnfs_ld_handle_write_error(hdr);
 hdr->mds_ops->rpc_release(hdr);
}
