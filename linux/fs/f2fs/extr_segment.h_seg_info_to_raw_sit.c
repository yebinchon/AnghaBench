
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg_entry {int valid_blocks; int ckpt_valid_blocks; int ckpt_valid_map; } ;
struct f2fs_sit_entry {int valid_map; } ;


 int SIT_VBLOCK_MAP_SIZE ;
 int __seg_info_to_raw_sit (struct seg_entry*,struct f2fs_sit_entry*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static inline void seg_info_to_raw_sit(struct seg_entry *se,
     struct f2fs_sit_entry *rs)
{
 __seg_info_to_raw_sit(se, rs);

 memcpy(se->ckpt_valid_map, rs->valid_map, SIT_VBLOCK_MAP_SIZE);
 se->ckpt_valid_blocks = se->valid_blocks;
}
