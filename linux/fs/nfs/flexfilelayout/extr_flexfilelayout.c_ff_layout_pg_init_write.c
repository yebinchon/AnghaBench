
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nfs_pgio_mirror {int pg_bsize; } ;
struct nfs_pageio_descriptor {int pg_mirror_count; scalar_t__ pg_maxretrans; int * pg_lseg; int pg_inode; struct nfs_pgio_mirror* pg_mirrors; int pg_dreq; int pg_error; } ;
struct nfs_page {int dummy; } ;
struct nfs_commit_info {int dummy; } ;
struct nfs4_pnfs_ds {int dummy; } ;
struct nfs4_ff_layout_mirror {TYPE_2__* mirror_ds; } ;
struct TYPE_8__ {int layout; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {TYPE_1__* ds_versions; } ;
struct TYPE_5__ {int wsize; } ;


 struct nfs4_ff_layout_mirror* FF_LAYOUT_COMP (int *,int) ;
 int FF_LAYOUT_MIRROR_COUNT (int *) ;
 int GFP_NOFS ;
 int IOMODE_RW ;
 scalar_t__ IS_ERR (int *) ;
 int NFS4_MAX_UINT64 ;
 TYPE_4__* NFS_I (int ) ;
 int NFS_MOUNT_SOFT ;
 int NFS_MOUNT_SOFTERR ;
 TYPE_3__* NFS_SERVER (int ) ;
 int PTR_ERR (int *) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ff_layout_alloc_commit_info (int *,struct nfs_commit_info*,int ) ;
 int ff_layout_no_fallback_to_mds (int *) ;
 scalar_t__ io_maxretrans ;
 struct nfs4_pnfs_ds* nfs4_ff_layout_prepare_ds (int *,struct nfs4_ff_layout_mirror*,int) ;
 int nfs_init_cinfo (struct nfs_commit_info*,int ,int ) ;
 int nfs_pageio_reset_write_mds (struct nfs_pageio_descriptor*) ;
 int nfs_req_openctx (struct nfs_page*) ;
 int pnfs_generic_pg_check_layout (struct nfs_pageio_descriptor*) ;
 int pnfs_put_lseg (int *) ;
 int * pnfs_update_layout (int ,int ,int ,int ,int ,int,int ) ;
 int ssleep (int) ;
 int trace_pnfs_mds_fallback_pg_init_write (int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void
ff_layout_pg_init_write(struct nfs_pageio_descriptor *pgio,
   struct nfs_page *req)
{
 struct nfs4_ff_layout_mirror *mirror;
 struct nfs_pgio_mirror *pgm;
 struct nfs_commit_info cinfo;
 struct nfs4_pnfs_ds *ds;
 int i;
 int status;

retry:
 pnfs_generic_pg_check_layout(pgio);
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
   return;
  }
 }

 if (pgio->pg_lseg == ((void*)0))
  goto out_mds;

 nfs_init_cinfo(&cinfo, pgio->pg_inode, pgio->pg_dreq);
 status = ff_layout_alloc_commit_info(pgio->pg_lseg, &cinfo, GFP_NOFS);
 if (status < 0)
  goto out_mds;


 if (WARN_ON_ONCE(pgio->pg_mirror_count !=
     FF_LAYOUT_MIRROR_COUNT(pgio->pg_lseg)))
  goto out_mds;

 for (i = 0; i < pgio->pg_mirror_count; i++) {
  mirror = FF_LAYOUT_COMP(pgio->pg_lseg, i);
  ds = nfs4_ff_layout_prepare_ds(pgio->pg_lseg, mirror, 1);
  if (!ds) {
   if (!ff_layout_no_fallback_to_mds(pgio->pg_lseg))
    goto out_mds;
   pnfs_put_lseg(pgio->pg_lseg);
   pgio->pg_lseg = ((void*)0);

   ssleep(1);
   goto retry;
  }
  pgm = &pgio->pg_mirrors[i];
  pgm->pg_bsize = mirror->mirror_ds->ds_versions[0].wsize;
 }

 if (NFS_SERVER(pgio->pg_inode)->flags &
   (NFS_MOUNT_SOFT|NFS_MOUNT_SOFTERR))
  pgio->pg_maxretrans = io_maxretrans;
 return;

out_mds:
 trace_pnfs_mds_fallback_pg_init_write(pgio->pg_inode,
   0, NFS4_MAX_UINT64, IOMODE_RW,
   NFS_I(pgio->pg_inode)->layout,
   pgio->pg_lseg);
 pnfs_put_lseg(pgio->pg_lseg);
 pgio->pg_lseg = ((void*)0);
 pgio->pg_maxretrans = 0;
 nfs_pageio_reset_write_mds(pgio);
}
