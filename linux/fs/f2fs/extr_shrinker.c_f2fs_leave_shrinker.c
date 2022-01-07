
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int s_list; } ;


 int __count_extent_cache (struct f2fs_sb_info*) ;
 int f2fs_list_lock ;
 int f2fs_shrink_extent_tree (struct f2fs_sb_info*,int ) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void f2fs_leave_shrinker(struct f2fs_sb_info *sbi)
{
 f2fs_shrink_extent_tree(sbi, __count_extent_cache(sbi));

 spin_lock(&f2fs_list_lock);
 list_del_init(&sbi->s_list);
 spin_unlock(&f2fs_list_lock);
}
