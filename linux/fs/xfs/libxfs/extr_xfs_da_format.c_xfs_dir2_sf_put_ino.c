
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_ino_t ;
typedef int uint8_t ;
struct xfs_dir2_sf_hdr {scalar_t__ i8count; } ;


 int ASSERT (int) ;
 int put_unaligned_be32 (int,int *) ;
 int put_unaligned_be64 (int,int *) ;

__attribute__((used)) static void
xfs_dir2_sf_put_ino(
 struct xfs_dir2_sf_hdr *hdr,
 uint8_t *to,
 xfs_ino_t ino)
{
 ASSERT((ino & 0xff00000000000000ULL) == 0);

 if (hdr->i8count)
  put_unaligned_be64(ino, to);
 else
  put_unaligned_be32(ino, to);
}
