
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_ino_t ;
typedef int uint8_t ;
struct xfs_dir2_sf_hdr {scalar_t__ i8count; } ;


 int get_unaligned_be32 (int *) ;
 int get_unaligned_be64 (int *) ;

__attribute__((used)) static xfs_ino_t
xfs_dir2_sf_get_ino(
 struct xfs_dir2_sf_hdr *hdr,
 uint8_t *from)
{
 if (hdr->i8count)
  return get_unaligned_be64(from) & 0x00ffffffffffffffULL;
 else
  return get_unaligned_be32(from);
}
