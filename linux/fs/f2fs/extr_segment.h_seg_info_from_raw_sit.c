
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg_entry {int mtime; int type; int cur_valid_map_mir; int ckpt_valid_map; int cur_valid_map; void* ckpt_valid_blocks; void* valid_blocks; } ;
struct f2fs_sit_entry {int mtime; int valid_map; } ;


 int GET_SIT_TYPE (struct f2fs_sit_entry*) ;
 void* GET_SIT_VBLOCKS (struct f2fs_sit_entry*) ;
 int SIT_VBLOCK_MAP_SIZE ;
 int le64_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static inline void seg_info_from_raw_sit(struct seg_entry *se,
     struct f2fs_sit_entry *rs)
{
 se->valid_blocks = GET_SIT_VBLOCKS(rs);
 se->ckpt_valid_blocks = GET_SIT_VBLOCKS(rs);
 memcpy(se->cur_valid_map, rs->valid_map, SIT_VBLOCK_MAP_SIZE);
 memcpy(se->ckpt_valid_map, rs->valid_map, SIT_VBLOCK_MAP_SIZE);



 se->type = GET_SIT_TYPE(rs);
 se->mtime = le64_to_cpu(rs->mtime);
}
