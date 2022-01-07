
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
 int nfs_req_openctx (struct nfs_page*) ;
 int pnfs_put_lseg (int *) ;
 int * pnfs_update_layout (int ,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static void
ff_layout_pg_get_read(struct nfs_pageio_descriptor *pgio,
        struct nfs_page *req,
        bool strict_iomode)
{
 pnfs_put_lseg(pgio->pg_lseg);
 pgio->pg_lseg = pnfs_update_layout(pgio->pg_inode,
        nfs_req_openctx(req),
        0,
        NFS4_MAX_UINT64,
        IOMODE_READ,
        strict_iomode,
        GFP_KERNEL);
 if (IS_ERR(pgio->pg_lseg)) {
  pgio->pg_error = PTR_ERR(pgio->pg_lseg);
  pgio->pg_lseg = ((void*)0);
 }
}
