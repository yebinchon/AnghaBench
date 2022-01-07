
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_pageio_descriptor {TYPE_1__* pg_lseg; } ;
struct TYPE_2__ {int pls_flags; } ;


 int NFS_LSEG_VALID ;
 int pnfs_put_lseg (TYPE_1__*) ;
 scalar_t__ test_bit (int ,int *) ;

void
pnfs_generic_pg_check_layout(struct nfs_pageio_descriptor *pgio)
{
 if (pgio->pg_lseg == ((void*)0) ||
     test_bit(NFS_LSEG_VALID, &pgio->pg_lseg->pls_flags))
  return;
 pnfs_put_lseg(pgio->pg_lseg);
 pgio->pg_lseg = ((void*)0);
}
