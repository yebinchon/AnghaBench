
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_sf_hdr {int i8count; } ;
struct xfs_dir2_sf_entry {int dummy; } ;


 int xfs_dir2_sf_hdr_size (int ) ;

__attribute__((used)) static inline struct xfs_dir2_sf_entry *
xfs_dir2_sf_firstentry(struct xfs_dir2_sf_hdr *hdr)
{
 return (struct xfs_dir2_sf_entry *)
  ((char *)hdr + xfs_dir2_sf_hdr_size(hdr->i8count));
}
