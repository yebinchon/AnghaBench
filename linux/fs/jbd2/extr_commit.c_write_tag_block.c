
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u32 ;
typedef int journal_t ;
struct TYPE_3__ {void* t_blocknr_high; void* t_blocknr; } ;
typedef TYPE_1__ journal_block_tag_t ;


 void* cpu_to_be32 (unsigned long long) ;
 scalar_t__ jbd2_has_feature_64bit (int *) ;

__attribute__((used)) static void write_tag_block(journal_t *j, journal_block_tag_t *tag,
       unsigned long long block)
{
 tag->t_blocknr = cpu_to_be32(block & (u32)~0);
 if (jbd2_has_feature_64bit(j))
  tag->t_blocknr_high = cpu_to_be32((block >> 31) >> 1);
}
