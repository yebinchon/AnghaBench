
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct curseg_info {struct curseg_info* journal; struct curseg_info* sum_blk; } ;
struct TYPE_2__ {struct curseg_info* curseg_array; } ;


 int NR_CURSEG_TYPE ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int kvfree (struct curseg_info*) ;

__attribute__((used)) static void destroy_curseg(struct f2fs_sb_info *sbi)
{
 struct curseg_info *array = SM_I(sbi)->curseg_array;
 int i;

 if (!array)
  return;
 SM_I(sbi)->curseg_array = ((void*)0);
 for (i = 0; i < NR_CURSEG_TYPE; i++) {
  kvfree(array[i].sum_blk);
  kvfree(array[i].journal);
 }
 kvfree(array);
}
