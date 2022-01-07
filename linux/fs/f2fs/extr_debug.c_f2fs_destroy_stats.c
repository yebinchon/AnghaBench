
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_stat_info {int stat_list; } ;
struct f2fs_sb_info {int dummy; } ;


 struct f2fs_stat_info* F2FS_STAT (struct f2fs_sb_info*) ;
 int f2fs_stat_mutex ;
 int kvfree (struct f2fs_stat_info*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void f2fs_destroy_stats(struct f2fs_sb_info *sbi)
{
 struct f2fs_stat_info *si = F2FS_STAT(sbi);

 mutex_lock(&f2fs_stat_mutex);
 list_del(&si->stat_list);
 mutex_unlock(&f2fs_stat_mutex);

 kvfree(si);
}
