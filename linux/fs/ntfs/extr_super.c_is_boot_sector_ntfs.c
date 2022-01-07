
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
typedef int le32 ;
struct TYPE_4__ {int sectors_per_cluster; scalar_t__ fats; scalar_t__ large_sectors; int sectors_per_fat; int sectors; int root_entries; int reserved_sectors; int bytes_per_sector; } ;
struct TYPE_5__ {scalar_t__ oem_id; int clusters_per_mft_record; int clusters_per_index_record; scalar_t__ end_of_sector_marker; TYPE_1__ bpb; scalar_t__ checksum; } ;
typedef TYPE_2__ NTFS_BOOT_SECTOR ;


 scalar_t__ NTFS_MAX_CLUSTER_SIZE ;
 scalar_t__ cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 scalar_t__ le32_to_cpup (int *) ;
 scalar_t__ magicNTFS ;
 int ntfs_warning (struct super_block const*,char*) ;

__attribute__((used)) static bool is_boot_sector_ntfs(const struct super_block *sb,
  const NTFS_BOOT_SECTOR *b, const bool silent)
{







 if ((void*)b < (void*)&b->checksum && b->checksum && !silent) {
  le32 *u;
  u32 i;

  for (i = 0, u = (le32*)b; u < (le32*)(&b->checksum); ++u)
   i += le32_to_cpup(u);
  if (le32_to_cpu(b->checksum) != i)
   ntfs_warning(sb, "Invalid boot sector checksum.");
 }

 if (b->oem_id != magicNTFS)
  goto not_ntfs;

 if (le16_to_cpu(b->bpb.bytes_per_sector) < 0x100 ||
   le16_to_cpu(b->bpb.bytes_per_sector) > 0x1000)
  goto not_ntfs;

 switch (b->bpb.sectors_per_cluster) {
 case 1: case 2: case 4: case 8: case 16: case 32: case 64: case 128:
  break;
 default:
  goto not_ntfs;
 }

 if ((u32)le16_to_cpu(b->bpb.bytes_per_sector) *
   b->bpb.sectors_per_cluster > NTFS_MAX_CLUSTER_SIZE)
  goto not_ntfs;

 if (le16_to_cpu(b->bpb.reserved_sectors) ||
   le16_to_cpu(b->bpb.root_entries) ||
   le16_to_cpu(b->bpb.sectors) ||
   le16_to_cpu(b->bpb.sectors_per_fat) ||
   le32_to_cpu(b->bpb.large_sectors) || b->bpb.fats)
  goto not_ntfs;

 if ((u8)b->clusters_per_mft_record < 0xe1 ||
   (u8)b->clusters_per_mft_record > 0xf7)
  switch (b->clusters_per_mft_record) {
  case 1: case 2: case 4: case 8: case 16: case 32: case 64:
   break;
  default:
   goto not_ntfs;
  }

 if ((u8)b->clusters_per_index_record < 0xe1 ||
   (u8)b->clusters_per_index_record > 0xf7)
  switch (b->clusters_per_index_record) {
  case 1: case 2: case 4: case 8: case 16: case 32: case 64:
   break;
  default:
   goto not_ntfs;
  }





 if (!silent && b->end_of_sector_marker != cpu_to_le16(0xaa55))
  ntfs_warning(sb, "Invalid end of sector marker.");
 return 1;
not_ntfs:
 return 0;
}
