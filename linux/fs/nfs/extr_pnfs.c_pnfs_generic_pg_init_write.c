
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nfs_pageio_descriptor {int * pg_lseg; int pg_error; int pg_inode; } ;
struct nfs_page {int dummy; } ;


 int GFP_KERNEL ;
 int IOMODE_RW ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int nfs_pageio_reset_write_mds (struct nfs_pageio_descriptor*) ;
 int nfs_req_openctx (struct nfs_page*) ;
 int pnfs_generic_pg_check_layout (struct nfs_pageio_descriptor*) ;
 int pnfs_generic_pg_check_range (struct nfs_pageio_descriptor*,struct nfs_page*) ;
 int * pnfs_update_layout (int ,int ,int ,int ,int ,int,int ) ;
 int req_offset (struct nfs_page*) ;

void
pnfs_generic_pg_init_write(struct nfs_pageio_descriptor *pgio,
      struct nfs_page *req, u64 wb_size)
{
 pnfs_generic_pg_check_layout(pgio);
 pnfs_generic_pg_check_range(pgio, req);
 if (pgio->pg_lseg == ((void*)0)) {
  pgio->pg_lseg = pnfs_update_layout(pgio->pg_inode,
         nfs_req_openctx(req),
         req_offset(req),
         wb_size,
         IOMODE_RW,
         0,
         GFP_KERNEL);
  if (IS_ERR(pgio->pg_lseg)) {
   pgio->pg_error = PTR_ERR(pgio->pg_lseg);
   pgio->pg_lseg = ((void*)0);
   return;
  }
 }

 if (pgio->pg_lseg == ((void*)0))
  nfs_pageio_reset_write_mds(pgio);
}
