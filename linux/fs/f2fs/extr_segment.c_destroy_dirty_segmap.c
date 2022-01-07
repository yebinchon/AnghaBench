
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct dirty_seglist_info {int dummy; } ;
struct TYPE_2__ {int * dirty_info; } ;


 struct dirty_seglist_info* DIRTY_I (struct f2fs_sb_info*) ;
 int NR_DIRTY_TYPE ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int destroy_victim_secmap (struct f2fs_sb_info*) ;
 int discard_dirty_segmap (struct f2fs_sb_info*,int) ;
 int kvfree (struct dirty_seglist_info*) ;

__attribute__((used)) static void destroy_dirty_segmap(struct f2fs_sb_info *sbi)
{
 struct dirty_seglist_info *dirty_i = DIRTY_I(sbi);
 int i;

 if (!dirty_i)
  return;


 for (i = 0; i < NR_DIRTY_TYPE; i++)
  discard_dirty_segmap(sbi, i);

 destroy_victim_secmap(sbi);
 SM_I(sbi)->dirty_info = ((void*)0);
 kvfree(dirty_i);
}
