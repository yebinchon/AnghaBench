
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mru_cache {struct xfs_mru_cache* lists; } ;


 int kmem_free (struct xfs_mru_cache*) ;
 int xfs_mru_cache_flush (struct xfs_mru_cache*) ;

void
xfs_mru_cache_destroy(
 struct xfs_mru_cache *mru)
{
 if (!mru || !mru->lists)
  return;

 xfs_mru_cache_flush(mru);

 kmem_free(mru->lists);
 kmem_free(mru);
}
