
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_ino_t ;
struct xfs_dir2_sf_hdr {int dummy; } ;
struct xfs_dir2_sf_entry {size_t namelen; int * name; } ;


 int xfs_dir2_sf_put_ino (struct xfs_dir2_sf_hdr*,int *,int ) ;

__attribute__((used)) static void
xfs_dir2_sfe_put_ino(
 struct xfs_dir2_sf_hdr *hdr,
 struct xfs_dir2_sf_entry *sfep,
 xfs_ino_t ino)
{
 xfs_dir2_sf_put_ino(hdr, &sfep->name[sfep->namelen], ino);
}
