
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_mirror {int dummy; } ;
struct nfs_pageio_descriptor {struct nfs_pgio_mirror* pg_mirrors_dynamic; int pg_bsize; struct nfs_pgio_mirror* pg_mirrors_static; } ;


 int GFP_KERNEL ;
 int kfree (struct nfs_pgio_mirror*) ;
 struct nfs_pgio_mirror* kmalloc_array (unsigned int,int,int ) ;
 int nfs_pageio_mirror_init (struct nfs_pgio_mirror*,int ) ;

__attribute__((used)) static struct nfs_pgio_mirror *
nfs_pageio_alloc_mirrors(struct nfs_pageio_descriptor *desc,
  unsigned int mirror_count)
{
 struct nfs_pgio_mirror *ret;
 unsigned int i;

 kfree(desc->pg_mirrors_dynamic);
 desc->pg_mirrors_dynamic = ((void*)0);
 if (mirror_count == 1)
  return desc->pg_mirrors_static;
 ret = kmalloc_array(mirror_count, sizeof(*ret), GFP_KERNEL);
 if (ret != ((void*)0)) {
  for (i = 0; i < mirror_count; i++)
   nfs_pageio_mirror_init(&ret[i], desc->pg_bsize);
  desc->pg_mirrors_dynamic = ret;
 }
 return ret;
}
