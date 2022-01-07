
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct jbd2_journal_block_tail {scalar_t__ t_checksum; } ;
struct TYPE_5__ {int j_blocksize; int j_csum_seed; } ;
typedef TYPE_1__ journal_t ;
typedef int __u32 ;
typedef scalar_t__ __be32 ;


 scalar_t__ cpu_to_be32 (int ) ;
 int jbd2_chksum (TYPE_1__*,int ,void*,int) ;
 int jbd2_journal_has_csum_v2or3 (TYPE_1__*) ;

__attribute__((used)) static int jbd2_descriptor_block_csum_verify(journal_t *j, void *buf)
{
 struct jbd2_journal_block_tail *tail;
 __be32 provided;
 __u32 calculated;

 if (!jbd2_journal_has_csum_v2or3(j))
  return 1;

 tail = (struct jbd2_journal_block_tail *)(buf + j->j_blocksize -
   sizeof(struct jbd2_journal_block_tail));
 provided = tail->t_checksum;
 tail->t_checksum = 0;
 calculated = jbd2_chksum(j, j->j_csum_seed, buf, j->j_blocksize);
 tail->t_checksum = provided;

 return provided == cpu_to_be32(calculated);
}
