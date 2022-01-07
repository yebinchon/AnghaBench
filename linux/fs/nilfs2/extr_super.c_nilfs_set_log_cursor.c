
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_last_segment_lock; int ns_last_cno; int ns_last_pseg; int ns_last_seq; } ;
struct nilfs_super_block {void* s_last_cno; void* s_last_pseg; void* s_last_seq; void* s_free_blocks_count; } ;
typedef int sector_t ;


 void* cpu_to_le64 (int ) ;
 int nilfs_count_free_blocks (struct the_nilfs*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nilfs_set_log_cursor(struct nilfs_super_block *sbp,
     struct the_nilfs *nilfs)
{
 sector_t nfreeblocks;


 nilfs_count_free_blocks(nilfs, &nfreeblocks);
 sbp->s_free_blocks_count = cpu_to_le64(nfreeblocks);

 spin_lock(&nilfs->ns_last_segment_lock);
 sbp->s_last_seq = cpu_to_le64(nilfs->ns_last_seq);
 sbp->s_last_pseg = cpu_to_le64(nilfs->ns_last_pseg);
 sbp->s_last_cno = cpu_to_le64(nilfs->ns_last_cno);
 spin_unlock(&nilfs->ns_last_segment_lock);
}
