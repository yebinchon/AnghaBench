
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct xfs_dir2_sf_hdr {int dummy; } ;


 int xfs_dir2_sf_entsize (struct xfs_dir2_sf_hdr*,int) ;

__attribute__((used)) static int
xfs_dir3_sf_entsize(
 struct xfs_dir2_sf_hdr *hdr,
 int len)
{
 return xfs_dir2_sf_entsize(hdr, len) + sizeof(uint8_t);
}
