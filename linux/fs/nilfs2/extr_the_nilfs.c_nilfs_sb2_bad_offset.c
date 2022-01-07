
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nilfs_super_block {int s_log_block_size; int s_blocks_per_segment; int s_nsegments; } ;


 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int nilfs_sb2_bad_offset(struct nilfs_super_block *sbp, u64 offset)
{
 return offset < ((le64_to_cpu(sbp->s_nsegments) *
     le32_to_cpu(sbp->s_blocks_per_segment)) <<
    (le32_to_cpu(sbp->s_log_block_size) + 10));
}
