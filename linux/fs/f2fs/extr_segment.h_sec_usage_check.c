
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {unsigned int cur_victim_sec; } ;


 scalar_t__ IS_CURSEC (struct f2fs_sb_info*,unsigned int) ;

__attribute__((used)) static inline bool sec_usage_check(struct f2fs_sb_info *sbi, unsigned int secno)
{
 if (IS_CURSEC(sbi, secno) || (sbi->cur_victim_sec == secno))
  return 1;
 return 0;
}
