
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct f2fs_sb_info {int user_block_count; } ;


 int div_u64 (int,int ) ;
 scalar_t__ valid_user_blocks (struct f2fs_sb_info*) ;

__attribute__((used)) static inline int utilization(struct f2fs_sb_info *sbi)
{
 return div_u64((u64)valid_user_blocks(sbi) * 100,
     sbi->user_block_count);
}
