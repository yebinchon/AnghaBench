
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct dirty_seglist_info {int victim_secmap; } ;


 struct dirty_seglist_info* DIRTY_I (struct f2fs_sb_info*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAIN_SECS (struct f2fs_sb_info*) ;
 unsigned int f2fs_bitmap_size (int ) ;
 int f2fs_kvzalloc (struct f2fs_sb_info*,unsigned int,int ) ;

__attribute__((used)) static int init_victim_secmap(struct f2fs_sb_info *sbi)
{
 struct dirty_seglist_info *dirty_i = DIRTY_I(sbi);
 unsigned int bitmap_size = f2fs_bitmap_size(MAIN_SECS(sbi));

 dirty_i->victim_secmap = f2fs_kvzalloc(sbi, bitmap_size, GFP_KERNEL);
 if (!dirty_i->victim_secmap)
  return -ENOMEM;
 return 0;
}
