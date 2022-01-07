
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_rsum_cache; } ;
typedef TYPE_1__ xfs_mount_t ;
typedef int xfs_extlen_t ;


 int kmem_zalloc_large (int ,int ) ;
 int xfs_warn (TYPE_1__*,char*) ;

__attribute__((used)) static void
xfs_alloc_rsum_cache(
 xfs_mount_t *mp,
 xfs_extlen_t rbmblocks)
{





 mp->m_rsum_cache = kmem_zalloc_large(rbmblocks, 0);
 if (!mp->m_rsum_cache)
  xfs_warn(mp, "could not allocate realtime summary cache");
}
