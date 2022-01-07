
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int sb; int gc_mutex; } ;


 int SBI_CP_DISABLED ;
 int SBI_IS_DIRTY ;
 int clear_sbi_flag (struct f2fs_sb_info*,int ) ;
 int f2fs_dirty_to_prefree (struct f2fs_sb_info*) ;
 int f2fs_sync_fs (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static void f2fs_enable_checkpoint(struct f2fs_sb_info *sbi)
{
 mutex_lock(&sbi->gc_mutex);
 f2fs_dirty_to_prefree(sbi);

 clear_sbi_flag(sbi, SBI_CP_DISABLED);
 set_sbi_flag(sbi, SBI_IS_DIRTY);
 mutex_unlock(&sbi->gc_mutex);

 f2fs_sync_fs(sbi->sb, 1);
}
