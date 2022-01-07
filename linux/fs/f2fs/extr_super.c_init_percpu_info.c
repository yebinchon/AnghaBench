
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int alloc_valid_block_count; int total_valid_inode_count; } ;


 int GFP_KERNEL ;
 int percpu_counter_destroy (int *) ;
 int percpu_counter_init (int *,int ,int ) ;

__attribute__((used)) static int init_percpu_info(struct f2fs_sb_info *sbi)
{
 int err;

 err = percpu_counter_init(&sbi->alloc_valid_block_count, 0, GFP_KERNEL);
 if (err)
  return err;

 err = percpu_counter_init(&sbi->total_valid_inode_count, 0,
        GFP_KERNEL);
 if (err)
  percpu_counter_destroy(&sbi->alloc_valid_block_count);

 return err;
}
