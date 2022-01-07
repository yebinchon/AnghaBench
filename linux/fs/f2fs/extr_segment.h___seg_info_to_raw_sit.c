
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg_entry {unsigned short type; unsigned short valid_blocks; int mtime; int cur_valid_map; } ;
struct f2fs_sit_entry {int mtime; int valid_map; int vblocks; } ;


 unsigned short SIT_VBLOCKS_SHIFT ;
 int SIT_VBLOCK_MAP_SIZE ;
 int cpu_to_le16 (unsigned short) ;
 int cpu_to_le64 (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static inline void __seg_info_to_raw_sit(struct seg_entry *se,
     struct f2fs_sit_entry *rs)
{
 unsigned short raw_vblocks = (se->type << SIT_VBLOCKS_SHIFT) |
     se->valid_blocks;
 rs->vblocks = cpu_to_le16(raw_vblocks);
 memcpy(rs->valid_map, se->cur_valid_map, SIT_VBLOCK_MAP_SIZE);
 rs->mtime = cpu_to_le64(se->mtime);
}
