
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct TYPE_6__ {unsigned int segno; } ;
struct TYPE_5__ {scalar_t__ alloc_mode; } ;
struct TYPE_4__ {unsigned int* last_victim; } ;


 scalar_t__ ALLOC_MODE_REUSE ;
 size_t ALLOC_NEXT ;
 int CURSEG_HOT_DATA ;
 TYPE_3__* CURSEG_I (struct f2fs_sb_info*,int) ;
 TYPE_2__ F2FS_OPTION (struct f2fs_sb_info*) ;
 scalar_t__ IS_NODESEG (int) ;
 int NOHEAP ;
 int SBI_CP_DISABLED ;
 TYPE_1__* SIT_I (struct f2fs_sb_info*) ;
 scalar_t__ __is_large_section (struct f2fs_sb_info*) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 scalar_t__ test_opt (struct f2fs_sb_info*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static unsigned int __get_next_segno(struct f2fs_sb_info *sbi, int type)
{

 if (__is_large_section(sbi))
  return CURSEG_I(sbi, type)->segno;

 if (unlikely(is_sbi_flag_set(sbi, SBI_CP_DISABLED)))
  return 0;

 if (test_opt(sbi, NOHEAP) &&
  (type == CURSEG_HOT_DATA || IS_NODESEG(type)))
  return 0;

 if (SIT_I(sbi)->last_victim[ALLOC_NEXT])
  return SIT_I(sbi)->last_victim[ALLOC_NEXT];


 if (F2FS_OPTION(sbi).alloc_mode == ALLOC_MODE_REUSE)
  return 0;

 return CURSEG_I(sbi, type)->segno;
}
