
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;


 int GET_SEC_FROM_SEG (struct f2fs_sb_info*,unsigned int) ;
 scalar_t__ reserved_segments (struct f2fs_sb_info*) ;

__attribute__((used)) static inline int reserved_sections(struct f2fs_sb_info *sbi)
{
 return GET_SEC_FROM_SEG(sbi, (unsigned int)reserved_segments(sbi));
}
