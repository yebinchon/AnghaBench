
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {int * pg_lseg; int pg_error; int pg_inode; } ;
struct nfs_page {int dummy; } ;


 int GFP_KERNEL ;
 int IOMODE_READ ;
 scalar_t__ IS_ERR (int *) ;
 int NFS4_MAX_UINT64 ;
 int PTR_ERR (int *) ;
 int * fl_pnfs_update_layout (int ,int ,int ,int ,int ,int,int ) ;
 int nfs_pageio_reset_read_mds (struct nfs_pageio_descriptor*) ;
 int nfs_req_openctx (struct nfs_page*) ;
 int pnfs_generic_pg_check_layout (struct nfs_pageio_descriptor*) ;

__attribute__((used)) static void
filelayout_pg_init_read(struct nfs_pageio_descriptor *pgio,
   struct nfs_page *req)
{
 pnfs_generic_pg_check_layout(pgio);
 if (!pgio->pg_lseg) {
  pgio->pg_lseg = fl_pnfs_update_layout(pgio->pg_inode,
            nfs_req_openctx(req),
            0,
            NFS4_MAX_UINT64,
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
