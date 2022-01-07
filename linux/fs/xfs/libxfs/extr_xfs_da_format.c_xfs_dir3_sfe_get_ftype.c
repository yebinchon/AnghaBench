
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct xfs_dir2_sf_entry {scalar_t__* name; size_t namelen; } ;


 scalar_t__ XFS_DIR3_FT_MAX ;
 scalar_t__ XFS_DIR3_FT_UNKNOWN ;

__attribute__((used)) static uint8_t
xfs_dir3_sfe_get_ftype(
 struct xfs_dir2_sf_entry *sfep)
{
 uint8_t ftype;

 ftype = sfep->name[sfep->namelen];
 if (ftype >= XFS_DIR3_FT_MAX)
  return XFS_DIR3_FT_UNKNOWN;
 return ftype;
}
