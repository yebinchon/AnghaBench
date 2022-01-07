
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct free_segmap_info {struct free_segmap_info* free_secmap; struct free_segmap_info* free_segmap; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {struct free_segmap_info* free_info; } ;


 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int kvfree (struct free_segmap_info*) ;

__attribute__((used)) static void destroy_free_segmap(struct f2fs_sb_info *sbi)
{
 struct free_segmap_info *free_i = SM_I(sbi)->free_info;
 if (!free_i)
  return;
 SM_I(sbi)->free_info = ((void*)0);
 kvfree(free_i->free_segmap);
 kvfree(free_i->free_secmap);
 kvfree(free_i);
}
