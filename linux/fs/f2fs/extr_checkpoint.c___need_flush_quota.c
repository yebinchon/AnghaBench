
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int quota_sem; } ;


 int F2FS_DIRTY_QDATA ;
 int SBI_QUOTA_NEED_FLUSH ;
 int SBI_QUOTA_NEED_REPAIR ;
 int SBI_QUOTA_SKIP_FLUSH ;
 int clear_sbi_flag (struct f2fs_sb_info*,int ) ;
 int down_write (int *) ;
 scalar_t__ get_pages (struct f2fs_sb_info*,int ) ;
 int is_journalled_quota (struct f2fs_sb_info*) ;
 scalar_t__ is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int up_write (int *) ;

__attribute__((used)) static bool __need_flush_quota(struct f2fs_sb_info *sbi)
{
 bool ret = 0;

 if (!is_journalled_quota(sbi))
  return 0;

 down_write(&sbi->quota_sem);
 if (is_sbi_flag_set(sbi, SBI_QUOTA_SKIP_FLUSH)) {
  ret = 0;
 } else if (is_sbi_flag_set(sbi, SBI_QUOTA_NEED_REPAIR)) {
  ret = 0;
 } else if (is_sbi_flag_set(sbi, SBI_QUOTA_NEED_FLUSH)) {
  clear_sbi_flag(sbi, SBI_QUOTA_NEED_FLUSH);
  ret = 1;
 } else if (get_pages(sbi, F2FS_DIRTY_QDATA)) {
  ret = 1;
 }
 up_write(&sbi->quota_sem);
 return ret;
}
