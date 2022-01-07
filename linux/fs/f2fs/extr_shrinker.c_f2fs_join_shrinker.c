
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int s_list; } ;


 int f2fs_list ;
 int f2fs_list_lock ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void f2fs_join_shrinker(struct f2fs_sb_info *sbi)
{
 spin_lock(&f2fs_list_lock);
 list_add_tail(&sbi->s_list, &f2fs_list);
 spin_unlock(&f2fs_list_lock);
}
