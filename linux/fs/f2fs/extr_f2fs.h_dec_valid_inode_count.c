
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int total_valid_inode_count; } ;


 int percpu_counter_dec (int *) ;

__attribute__((used)) static inline void dec_valid_inode_count(struct f2fs_sb_info *sbi)
{
 percpu_counter_dec(&sbi->total_valid_inode_count);
}
