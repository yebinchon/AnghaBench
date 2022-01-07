
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nfs_pgio_mirror {int pg_bsize; } ;
struct nfs_pageio_descriptor {int pg_mirror_idx; scalar_t__ pg_error; scalar_t__ pg_maxretrans; int * pg_lseg; int pg_inode; struct nfs_pgio_mirror* pg_mirrors; } ;
struct nfs_page {int dummy; } ;
struct nfs4_pnfs_ds {int dummy; } ;
struct nfs4_ff_layout_mirror {TYPE_2__* mirror_ds; } ;
struct TYPE_8__ {int layout; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {TYPE_1__* ds_versions; } ;
struct TYPE_5__ {int rsize; } ;


 struct nfs4_ff_layout_mirror* FF_LAYOUT_COMP (int *,int) ;
 int IOMODE_READ ;
 int NFS4_MAX_UINT64 ;
 TYPE_4__* NFS_I (int ) ;
 int NFS_MOUNT_SOFT ;
 int NFS_MOUNT_SOFTERR ;
 TYPE_3__* NFS_SERVER (int ) ;
 scalar_t__ ff_layout_avoid_read_on_rw (int *) ;
 struct nfs4_pnfs_ds* ff_layout_choose_best_ds_for_read (int *,int ,int*) ;
 int ff_layout_no_fallback_to_mds (int *) ;
 int ff_layout_pg_get_read (struct nfs_pageio_descriptor*,struct nfs_page*,int) ;
 scalar_t__ io_maxretrans ;
 int nfs_pageio_reset_read_mds (struct nfs_pageio_descriptor*) ;
 int pnfs_generic_pg_check_layout (struct nfs_pageio_descriptor*) ;
 int pnfs_put_lseg (int *) ;
 int ssleep (int) ;
 int trace_pnfs_mds_fallback_pg_init_read (int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void
ff_layout_pg_init_read(struct nfs_pageio_descriptor *pgio,
   struct nfs_page *req)
{
 struct nfs_pgio_mirror *pgm;
 struct nfs4_ff_layout_mirror *mirror;
 struct nfs4_pnfs_ds *ds;
 int ds_idx;

retry:
 pnfs_generic_pg_check_layout(pgio);

 if (!pgio->pg_lseg) {
  ff_layout_pg_get_read(pgio, req, 0);
  if (!pgio->pg_lseg)
   goto out_nolseg;
 }
 if (ff_layout_avoid_read_on_rw(pgio->pg_lseg)) {
  ff_layout_pg_get_read(pgio, req, 1);
  if (!pgio->pg_lseg)
   goto out_nolseg;
 }

 ds = ff_layout_choose_best_ds_for_read(pgio->pg_lseg, 0, &ds_idx);
 if (!ds) {
  if (!ff_layout_no_fallback_to_mds(pgio->pg_lseg))
   goto out_mds;
  pnfs_put_lseg(pgio->pg_lseg);
  pgio->pg_lseg = ((void*)0);

  ssleep(1);
  goto retry;
 }

 mirror = FF_LAYOUT_COMP(pgio->pg_lseg, ds_idx);

 pgio->pg_mirror_idx = ds_idx;


 pgm = &pgio->pg_mirrors[0];
 pgm->pg_bsize = mirror->mirror_ds->ds_versions[0].rsize;

 if (NFS_SERVER(pgio->pg_inode)->flags &
   (NFS_MOUNT_SOFT|NFS_MOUNT_SOFTERR))
  pgio->pg_maxretrans = io_maxretrans;
 return;
out_nolseg:
 if (pgio->pg_error < 0)
  return;
out_mds:
 trace_pnfs_mds_fallback_pg_init_read(pgio->pg_inode,
   0, NFS4_MAX_UINT64, IOMODE_READ,
   NFS_I(pgio->pg_inode)->layout,
   pgio->pg_lseg);
 pnfs_put_lseg(pgio->pg_lseg);
 pgio->pg_lseg = ((void*)0);
 pgio->pg_maxretrans = 0;
 nfs_pageio_reset_read_mds(pgio);
}
