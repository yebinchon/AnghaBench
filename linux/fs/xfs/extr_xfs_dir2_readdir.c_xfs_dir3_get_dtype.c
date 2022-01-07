
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct xfs_mount {int m_sb; } ;


 unsigned char DT_UNKNOWN ;
 size_t XFS_DIR3_FT_MAX ;
 unsigned char* xfs_dir3_filetype_table ;
 int xfs_sb_version_hasftype (int *) ;

unsigned char
xfs_dir3_get_dtype(
 struct xfs_mount *mp,
 uint8_t filetype)
{
 if (!xfs_sb_version_hasftype(&mp->m_sb))
  return DT_UNKNOWN;

 if (filetype >= XFS_DIR3_FT_MAX)
  return DT_UNKNOWN;

 return xfs_dir3_filetype_table[filetype];
}
