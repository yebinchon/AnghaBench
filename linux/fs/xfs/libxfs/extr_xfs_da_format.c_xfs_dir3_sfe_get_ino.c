
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_ino_t ;
struct xfs_dir2_sf_hdr {int dummy; } ;
struct xfs_dir2_sf_entry {int namelen; int * name; } ;


 int xfs_dir2_sf_get_ino (struct xfs_dir2_sf_hdr*,int *) ;

__attribute__((used)) static xfs_ino_t
xfs_dir3_sfe_get_ino(
 struct xfs_dir2_sf_hdr *hdr,
 struct xfs_dir2_sf_entry *sfep)
{
 return xfs_dir2_sf_get_ino(hdr, &sfep->name[sfep->namelen + 1]);
}
