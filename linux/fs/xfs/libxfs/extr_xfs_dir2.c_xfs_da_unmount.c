
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_attr_geo; int m_dir_geo; } ;


 int kmem_free (int ) ;

void
xfs_da_unmount(
 struct xfs_mount *mp)
{
 kmem_free(mp->m_dir_geo);
 kmem_free(mp->m_attr_geo);
}
