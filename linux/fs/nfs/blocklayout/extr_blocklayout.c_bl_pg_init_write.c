
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct nfs_pageio_descriptor {TYPE_1__* pg_lseg; int pg_inode; int * pg_dreq; } ;
struct nfs_page {int wb_index; } ;
struct TYPE_3__ {int pls_flags; } ;


 int NFS_LSEG_UNAVAILABLE ;
 int PAGE_SIZE ;
 int is_aligned_req (struct nfs_pageio_descriptor*,struct nfs_page*,int ,int) ;
 int nfs_dreq_bytes_left (int *) ;
 int nfs_pageio_reset_write_mds (struct nfs_pageio_descriptor*) ;
 int pnfs_error_mark_layout_for_return (int ,TYPE_1__*) ;
 int pnfs_generic_pg_init_write (struct nfs_pageio_descriptor*,struct nfs_page*,int ) ;
 int pnfs_num_cont_bytes (int ,int ) ;
 int pnfs_set_lo_fail (TYPE_1__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
bl_pg_init_write(struct nfs_pageio_descriptor *pgio, struct nfs_page *req)
{
 u64 wb_size;

 if (!is_aligned_req(pgio, req, PAGE_SIZE, 1)) {
  nfs_pageio_reset_write_mds(pgio);
  return;
 }

 if (pgio->pg_dreq == ((void*)0))
  wb_size = pnfs_num_cont_bytes(pgio->pg_inode,
           req->wb_index);
 else
  wb_size = nfs_dreq_bytes_left(pgio->pg_dreq);

 pnfs_generic_pg_init_write(pgio, req, wb_size);

 if (pgio->pg_lseg &&
  test_bit(NFS_LSEG_UNAVAILABLE, &pgio->pg_lseg->pls_flags)) {

  pnfs_error_mark_layout_for_return(pgio->pg_inode, pgio->pg_lseg);
  pnfs_set_lo_fail(pgio->pg_lseg);
  nfs_pageio_reset_write_mds(pgio);
 }
}
