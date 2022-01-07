
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_pageio_descriptor {int * pg_lseg; int pg_inode; int pg_error; } ;
struct nfs_page {int dummy; } ;
struct TYPE_2__ {int layout; } ;


 unsigned int FF_LAYOUT_MIRROR_COUNT (int *) ;
 int GFP_NOFS ;
 int IOMODE_RW ;
 scalar_t__ IS_ERR (int *) ;
 int NFS4_MAX_UINT64 ;
 TYPE_1__* NFS_I (int ) ;
 int PTR_ERR (int *) ;
 int nfs_pageio_reset_write_mds (struct nfs_pageio_descriptor*) ;
 int nfs_req_openctx (struct nfs_page*) ;
 int * pnfs_update_layout (int ,int ,int ,int ,int ,int,int ) ;
 int trace_pnfs_mds_fallback_pg_get_mirror_count (int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static unsigned int
ff_layout_pg_get_mirror_count_write(struct nfs_pageio_descriptor *pgio,
        struct nfs_page *req)
{
 if (!pgio->pg_lseg) {
  pgio->pg_lseg = pnfs_update_layout(pgio->pg_inode,
         nfs_req_openctx(req),
         0,
         NFS4_MAX_UINT64,
         IOMODE_RW,
         0,
         GFP_NOFS);
  if (IS_ERR(pgio->pg_lseg)) {
   pgio->pg_error = PTR_ERR(pgio->pg_lseg);
   pgio->pg_lseg = ((void*)0);
   goto out;
  }
 }
 if (pgio->pg_lseg)
  return FF_LAYOUT_MIRROR_COUNT(pgio->pg_lseg);

 trace_pnfs_mds_fallback_pg_get_mirror_count(pgio->pg_inode,
   0, NFS4_MAX_UINT64, IOMODE_RW,
   NFS_I(pgio->pg_inode)->layout,
   pgio->pg_lseg);

 nfs_pageio_reset_write_mds(pgio);
out:
 return 1;
}
