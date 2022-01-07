
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {int * pg_lseg; } ;
struct nfs_page {int dummy; } ;


 int pnfs_lseg_request_intersecting (int *,struct nfs_page*) ;
 int pnfs_put_lseg (int *) ;

__attribute__((used)) static void
pnfs_generic_pg_check_range(struct nfs_pageio_descriptor *pgio, struct nfs_page *req)
{
 if (pgio->pg_lseg && !pnfs_lseg_request_intersecting(pgio->pg_lseg, req)) {
  pnfs_put_lseg(pgio->pg_lseg);
  pgio->pg_lseg = ((void*)0);
 }
}
