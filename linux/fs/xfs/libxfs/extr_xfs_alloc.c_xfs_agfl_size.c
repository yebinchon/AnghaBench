
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_agblock_t ;
struct TYPE_2__ {unsigned int sb_sectsize; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_agfl {int dummy; } ;


 scalar_t__ xfs_sb_version_hascrc (TYPE_1__*) ;

unsigned int
xfs_agfl_size(
 struct xfs_mount *mp)
{
 unsigned int size = mp->m_sb.sb_sectsize;

 if (xfs_sb_version_hascrc(&mp->m_sb))
  size -= sizeof(struct xfs_agfl);

 return size / sizeof(xfs_agblock_t);
}
