
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_sf_hdr {int dummy; } ;
struct xfs_dir2_sf_entry {int namelen; } ;


 int xfs_dir3_sf_entsize (struct xfs_dir2_sf_hdr*,int ) ;

__attribute__((used)) static struct xfs_dir2_sf_entry *
xfs_dir3_sf_nextentry(
 struct xfs_dir2_sf_hdr *hdr,
 struct xfs_dir2_sf_entry *sfep)
{
 return (struct xfs_dir2_sf_entry *)
  ((char *)sfep + xfs_dir3_sf_entsize(hdr, sfep->namelen));
}
