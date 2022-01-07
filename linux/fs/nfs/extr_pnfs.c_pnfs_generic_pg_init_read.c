
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nfs_pageio_descriptor {int * pg_lseg; int pg_error; int pg_inode; int * pg_dreq; } ;
struct nfs_page {scalar_t__ wb_bytes; } ;


 int GFP_KERNEL ;
 int IOMODE_READ ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ i_size_read (int ) ;
 scalar_t__ nfs_dreq_bytes_left (int *) ;
 int nfs_pageio_reset_read_mds (struct nfs_pageio_descriptor*) ;
 int nfs_req_openctx (struct nfs_page*) ;
 int pnfs_generic_pg_check_layout (struct nfs_pageio_descriptor*) ;
 int pnfs_generic_pg_check_range (struct nfs_pageio_descriptor*,struct nfs_page*) ;
 int * pnfs_update_layout (int ,int ,scalar_t__,scalar_t__,int ,int,int ) ;
 scalar_t__ req_offset (struct nfs_page*) ;

void
pnfs_generic_pg_init_read(struct nfs_pageio_descriptor *pgio, struct nfs_page *req)
{
 u64 rd_size = req->wb_bytes;

 pnfs_generic_pg_check_layout(pgio);
 pnfs_generic_pg_check_range(pgio, req);
 if (pgio->pg_lseg == ((void*)0)) {
  if (pgio->pg_dreq == ((void*)0))
   rd_size = i_size_read(pgio->pg_inode) - req_offset(req);
  else
   rd_size = nfs_dreq_bytes_left(pgio->pg_dreq);

  pgio->pg_lseg = pnfs_update_layout(pgio->pg_inode,
         nfs_req_openctx(req),
         req_offset(req),
         rd_size,
         IOMODE_READ,
         0,
         GFP_KERNEL);
  if (IS_ERR(pgio->pg_lseg)) {
   pgio->pg_error = PTR_ERR(pgio->pg_lseg);
   pgio->pg_lseg = ((void*)0);
   return;
  }
 }

 if (pgio->pg_lseg == ((void*)0))
  nfs_pageio_reset_read_mds(pgio);

}
