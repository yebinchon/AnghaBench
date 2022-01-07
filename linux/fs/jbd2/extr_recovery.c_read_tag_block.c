
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int journal_t ;
struct TYPE_3__ {int t_blocknr_high; int t_blocknr; } ;
typedef TYPE_1__ journal_block_tag_t ;


 unsigned long long be32_to_cpu (int ) ;
 scalar_t__ jbd2_has_feature_64bit (int *) ;

__attribute__((used)) static inline unsigned long long read_tag_block(journal_t *journal,
      journal_block_tag_t *tag)
{
 unsigned long long block = be32_to_cpu(tag->t_blocknr);
 if (jbd2_has_feature_64bit(journal))
  block |= (u64)be32_to_cpu(tag->t_blocknr_high) << 32;
 return block;
}
