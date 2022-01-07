
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_sb; } ;
typedef int __u8 ;


 scalar_t__ xfs_sb_version_hascrc (int *) ;

bool
xfs_dinode_good_version(
 struct xfs_mount *mp,
 __u8 version)
{
 if (xfs_sb_version_hascrc(&mp->m_sb))
  return version == 3;

 return version == 1 || version == 2;
}
