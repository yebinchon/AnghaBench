
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;


 int TOTAL_SEGS (struct f2fs_sb_info*) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;

__attribute__((used)) static inline void check_seg_range(struct f2fs_sb_info *sbi, unsigned int segno)
{
 f2fs_bug_on(sbi, segno > TOTAL_SEGS(sbi) - 1);
}
