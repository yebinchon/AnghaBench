
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;


 int DISCARD ;
 scalar_t__ f2fs_hw_should_discard (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_hw_support_discard (struct f2fs_sb_info*) ;
 scalar_t__ test_opt (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static inline bool f2fs_realtime_discard_enable(struct f2fs_sb_info *sbi)
{
 return (test_opt(sbi, DISCARD) && f2fs_hw_support_discard(sbi)) ||
     f2fs_hw_should_discard(sbi);
}
