
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct jbd2_journal_block_tail {scalar_t__ t_checksum; } ;
struct buffer_head {int b_data; } ;
struct TYPE_5__ {int j_blocksize; int j_csum_seed; } ;
typedef TYPE_1__ journal_t ;
typedef int __u32 ;


 scalar_t__ cpu_to_be32 (int ) ;
 int jbd2_chksum (TYPE_1__*,int ,int,int) ;
 int jbd2_journal_has_csum_v2or3 (TYPE_1__*) ;

void jbd2_descriptor_block_csum_set(journal_t *j, struct buffer_head *bh)
{
 struct jbd2_journal_block_tail *tail;
 __u32 csum;

 if (!jbd2_journal_has_csum_v2or3(j))
  return;

 tail = (struct jbd2_journal_block_tail *)(bh->b_data + j->j_blocksize -
   sizeof(struct jbd2_journal_block_tail));
 tail->t_checksum = 0;
 csum = jbd2_chksum(j, j->j_csum_seed, bh->b_data, j->j_blocksize);
 tail->t_checksum = cpu_to_be32(csum);
}
