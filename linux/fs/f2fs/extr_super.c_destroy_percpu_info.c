
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int total_valid_inode_count; int alloc_valid_block_count; } ;


 int percpu_counter_destroy (int *) ;

__attribute__((used)) static void destroy_percpu_info(struct f2fs_sb_info *sbi)
{
 percpu_counter_destroy(&sbi->alloc_valid_block_count);
 percpu_counter_destroy(&sbi->total_valid_inode_count);
}
