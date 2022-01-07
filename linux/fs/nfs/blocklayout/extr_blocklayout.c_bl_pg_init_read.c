
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_pageio_descriptor {TYPE_1__* pg_lseg; int pg_inode; } ;
struct nfs_page {int dummy; } ;
struct TYPE_3__ {int pls_flags; } ;


 int NFS_LSEG_UNAVAILABLE ;
 int SECTOR_SIZE ;
 int is_aligned_req (struct nfs_pageio_descriptor*,struct nfs_page*,int ,int) ;
 int nfs_pageio_reset_read_mds (struct nfs_pageio_descriptor*) ;
 int pnfs_error_mark_layout_for_return (int ,TYPE_1__*) ;
 int pnfs_generic_pg_init_read (struct nfs_pageio_descriptor*,struct nfs_page*) ;
 int pnfs_set_lo_fail (TYPE_1__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
bl_pg_init_read(struct nfs_pageio_descriptor *pgio, struct nfs_page *req)
{
 if (!is_aligned_req(pgio, req, SECTOR_SIZE, 0)) {
  nfs_pageio_reset_read_mds(pgio);
  return;
 }

 pnfs_generic_pg_init_read(pgio, req);

 if (pgio->pg_lseg &&
  test_bit(NFS_LSEG_UNAVAILABLE, &pgio->pg_lseg->pls_flags)) {
  pnfs_error_mark_layout_for_return(pgio->pg_inode, pgio->pg_lseg);
  pnfs_set_lo_fail(pgio->pg_lseg);
  nfs_pageio_reset_read_mds(pgio);
 }
}
