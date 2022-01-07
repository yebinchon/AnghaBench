
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int total_valid_inode_count; } ;
typedef int s64 ;


 int percpu_counter_sum_positive (int *) ;

__attribute__((used)) static inline s64 valid_inode_count(struct f2fs_sb_info *sbi)
{
 return percpu_counter_sum_positive(&sbi->total_valid_inode_count);
}
