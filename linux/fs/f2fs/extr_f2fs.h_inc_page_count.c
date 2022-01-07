
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int * nr_pages; } ;


 int F2FS_DIRTY_DENTS ;
 int F2FS_DIRTY_IMETA ;
 int F2FS_DIRTY_META ;
 int F2FS_DIRTY_NODES ;
 int F2FS_DIRTY_QDATA ;
 int SBI_IS_DIRTY ;
 int atomic_inc (int *) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static inline void inc_page_count(struct f2fs_sb_info *sbi, int count_type)
{
 atomic_inc(&sbi->nr_pages[count_type]);

 if (count_type == F2FS_DIRTY_DENTS ||
   count_type == F2FS_DIRTY_NODES ||
   count_type == F2FS_DIRTY_META ||
   count_type == F2FS_DIRTY_QDATA ||
   count_type == F2FS_DIRTY_IMETA)
  set_sbi_flag(sbi, SBI_IS_DIRTY);
}
