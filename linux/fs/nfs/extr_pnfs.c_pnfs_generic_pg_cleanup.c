
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {int * pg_lseg; } ;


 int pnfs_put_lseg (int *) ;

void
pnfs_generic_pg_cleanup(struct nfs_pageio_descriptor *desc)
{
 if (desc->pg_lseg) {
  pnfs_put_lseg(desc->pg_lseg);
  desc->pg_lseg = ((void*)0);
 }
}
