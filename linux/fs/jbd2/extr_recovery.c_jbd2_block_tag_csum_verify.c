
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int seq ;
struct TYPE_9__ {int j_blocksize; int j_csum_seed; } ;
typedef TYPE_1__ journal_t ;
struct TYPE_10__ {scalar_t__ t_checksum; } ;
typedef TYPE_2__ journal_block_tag_t ;
struct TYPE_11__ {scalar_t__ t_checksum; } ;
typedef TYPE_3__ journal_block_tag3_t ;
typedef void __u8 ;
typedef int __u32 ;
typedef scalar_t__ __be32 ;


 scalar_t__ cpu_to_be16 (int ) ;
 scalar_t__ cpu_to_be32 (int ) ;
 int jbd2_chksum (TYPE_1__*,int ,void*,int) ;
 scalar_t__ jbd2_has_feature_csum3 (TYPE_1__*) ;
 int jbd2_journal_has_csum_v2or3 (TYPE_1__*) ;

__attribute__((used)) static int jbd2_block_tag_csum_verify(journal_t *j, journal_block_tag_t *tag,
          void *buf, __u32 sequence)
{
 journal_block_tag3_t *tag3 = (journal_block_tag3_t *)tag;
 __u32 csum32;
 __be32 seq;

 if (!jbd2_journal_has_csum_v2or3(j))
  return 1;

 seq = cpu_to_be32(sequence);
 csum32 = jbd2_chksum(j, j->j_csum_seed, (__u8 *)&seq, sizeof(seq));
 csum32 = jbd2_chksum(j, csum32, buf, j->j_blocksize);

 if (jbd2_has_feature_csum3(j))
  return tag3->t_checksum == cpu_to_be32(csum32);
 else
  return tag->t_checksum == cpu_to_be16(csum32);
}
