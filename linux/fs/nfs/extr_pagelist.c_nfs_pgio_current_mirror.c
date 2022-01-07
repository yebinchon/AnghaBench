
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_mirror {int dummy; } ;
struct nfs_pageio_descriptor {size_t pg_mirror_idx; struct nfs_pgio_mirror* pg_mirrors; } ;


 scalar_t__ nfs_pgio_has_mirroring (struct nfs_pageio_descriptor*) ;

struct nfs_pgio_mirror *
nfs_pgio_current_mirror(struct nfs_pageio_descriptor *desc)
{
 return nfs_pgio_has_mirroring(desc) ?
  &desc->pg_mirrors[desc->pg_mirror_idx] :
  &desc->pg_mirrors[0];
}
