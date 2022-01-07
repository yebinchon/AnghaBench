
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_super_block {int dummy; } ;
struct f2fs_sb_info {scalar_t__ raw_super; } ;



__attribute__((used)) static inline struct f2fs_super_block *F2FS_RAW_SUPER(struct f2fs_sb_info *sbi)
{
 return (struct f2fs_super_block *)(sbi->raw_super);
}
