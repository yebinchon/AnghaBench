
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;


 int f2fs_sb_has_blkzoned (struct f2fs_sb_info*) ;

__attribute__((used)) static inline bool f2fs_hw_should_discard(struct f2fs_sb_info *sbi)
{
 return f2fs_sb_has_blkzoned(sbi);
}
