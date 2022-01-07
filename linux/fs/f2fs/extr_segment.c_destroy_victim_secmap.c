
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct dirty_seglist_info {int victim_secmap; } ;


 struct dirty_seglist_info* DIRTY_I (struct f2fs_sb_info*) ;
 int kvfree (int ) ;

__attribute__((used)) static void destroy_victim_secmap(struct f2fs_sb_info *sbi)
{
 struct dirty_seglist_info *dirty_i = DIRTY_I(sbi);
 kvfree(dirty_i->victim_secmap);
}
