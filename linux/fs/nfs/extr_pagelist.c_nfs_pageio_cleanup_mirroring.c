
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {int pg_mirror_count; int * pg_mirrors_dynamic; int pg_mirrors_static; int pg_mirrors; scalar_t__ pg_mirror_idx; } ;


 int kfree (int *) ;

__attribute__((used)) static void nfs_pageio_cleanup_mirroring(struct nfs_pageio_descriptor *pgio)
{
 pgio->pg_mirror_count = 1;
 pgio->pg_mirror_idx = 0;
 pgio->pg_mirrors = pgio->pg_mirrors_static;
 kfree(pgio->pg_mirrors_dynamic);
 pgio->pg_mirrors_dynamic = ((void*)0);
}
