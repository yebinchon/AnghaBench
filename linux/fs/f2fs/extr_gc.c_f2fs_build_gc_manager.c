
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct f2fs_sb_info {int gc_pin_file_threshold; } ;
struct TYPE_6__ {int * v_ops; } ;
struct TYPE_5__ {int end_blk; } ;
struct TYPE_4__ {scalar_t__* last_victim; } ;


 size_t ALLOC_NEXT ;
 int DEF_GC_FAILED_PINNED_FILES ;
 TYPE_3__* DIRTY_I (struct f2fs_sb_info*) ;
 TYPE_2__ FDEV (int ) ;
 scalar_t__ GET_SEGNO (struct f2fs_sb_info*,int ) ;
 TYPE_1__* SIT_I (struct f2fs_sb_info*) ;
 int __is_large_section (struct f2fs_sb_info*) ;
 int default_v_ops ;
 scalar_t__ f2fs_is_multi_device (struct f2fs_sb_info*) ;

void f2fs_build_gc_manager(struct f2fs_sb_info *sbi)
{
 DIRTY_I(sbi)->v_ops = &default_v_ops;

 sbi->gc_pin_file_threshold = DEF_GC_FAILED_PINNED_FILES;


 if (f2fs_is_multi_device(sbi) && !__is_large_section(sbi))
  SIT_I(sbi)->last_victim[ALLOC_NEXT] =
    GET_SEGNO(sbi, FDEV(0).end_blk) + 1;
}
