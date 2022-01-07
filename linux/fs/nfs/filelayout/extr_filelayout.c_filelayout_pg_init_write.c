
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {int * pg_lseg; int pg_dreq; int pg_inode; int pg_error; } ;
struct nfs_page {int dummy; } ;
struct nfs_commit_info {int dummy; } ;


 int GFP_NOFS ;
 int IOMODE_RW ;
 scalar_t__ IS_ERR (int *) ;
 int NFS4_MAX_UINT64 ;
 int PTR_ERR (int *) ;
 int filelayout_alloc_commit_info (int *,struct nfs_commit_info*,int ) ;
 int * fl_pnfs_update_layout (int ,int ,int ,int ,int ,int,int ) ;
 int nfs_init_cinfo (struct nfs_commit_info*,int ,int ) ;
 int nfs_pageio_reset_write_mds (struct nfs_pageio_descriptor*) ;
 int nfs_req_openctx (struct nfs_page*) ;
 int pnfs_generic_pg_check_layout (struct nfs_pageio_descriptor*) ;
 int pnfs_put_lseg (int *) ;

__attribute__((used)) static void
filelayout_pg_init_write(struct nfs_pageio_descriptor *pgio,
    struct nfs_page *req)
{
 struct nfs_commit_info cinfo;
 int status;

 pnfs_generic_pg_check_layout(pgio);
 if (!pgio->pg_lseg) {
  pgio->pg_lseg = fl_pnfs_update_layout(pgio->pg_inode,
            nfs_req_openctx(req),
            0,
            NFS4_MAX_UINT64,
            IOMODE_RW,
            0,
            GFP_NOFS);
  if (IS_ERR(pgio->pg_lseg)) {
   pgio->pg_error = PTR_ERR(pgio->pg_lseg);
   pgio->pg_lseg = ((void*)0);
   return;
  }
 }


 if (pgio->pg_lseg == ((void*)0))
  goto out_mds;
 nfs_init_cinfo(&cinfo, pgio->pg_inode, pgio->pg_dreq);
 status = filelayout_alloc_commit_info(pgio->pg_lseg, &cinfo, GFP_NOFS);
 if (status < 0) {
  pnfs_put_lseg(pgio->pg_lseg);
  pgio->pg_lseg = ((void*)0);
  goto out_mds;
 }
 return;
out_mds:
 nfs_pageio_reset_write_mds(pgio);
}
