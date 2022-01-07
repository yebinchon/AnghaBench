
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {unsigned int* nr_dirty; } ;


 TYPE_1__* DIRTY_I (struct f2fs_sb_info*) ;
 size_t PRE ;

__attribute__((used)) static inline unsigned int prefree_segments(struct f2fs_sb_info *sbi)
{
 return DIRTY_I(sbi)->nr_dirty[PRE];
}
