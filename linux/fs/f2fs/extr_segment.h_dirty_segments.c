
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {unsigned int* nr_dirty; } ;


 size_t DIRTY_COLD_DATA ;
 size_t DIRTY_COLD_NODE ;
 size_t DIRTY_HOT_DATA ;
 size_t DIRTY_HOT_NODE ;
 TYPE_1__* DIRTY_I (struct f2fs_sb_info*) ;
 size_t DIRTY_WARM_DATA ;
 size_t DIRTY_WARM_NODE ;

__attribute__((used)) static inline unsigned int dirty_segments(struct f2fs_sb_info *sbi)
{
 return DIRTY_I(sbi)->nr_dirty[DIRTY_HOT_DATA] +
  DIRTY_I(sbi)->nr_dirty[DIRTY_WARM_DATA] +
  DIRTY_I(sbi)->nr_dirty[DIRTY_COLD_DATA] +
  DIRTY_I(sbi)->nr_dirty[DIRTY_HOT_NODE] +
  DIRTY_I(sbi)->nr_dirty[DIRTY_WARM_NODE] +
  DIRTY_I(sbi)->nr_dirty[DIRTY_COLD_NODE];
}
