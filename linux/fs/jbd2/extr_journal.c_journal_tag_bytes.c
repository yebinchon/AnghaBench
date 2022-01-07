
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int journal_t ;
typedef int journal_block_tag_t ;
typedef int journal_block_tag3_t ;
typedef int __u32 ;
typedef int __u16 ;


 scalar_t__ jbd2_has_feature_64bit (int *) ;
 scalar_t__ jbd2_has_feature_csum2 (int *) ;
 scalar_t__ jbd2_has_feature_csum3 (int *) ;

size_t journal_tag_bytes(journal_t *journal)
{
 size_t sz;

 if (jbd2_has_feature_csum3(journal))
  return sizeof(journal_block_tag3_t);

 sz = sizeof(journal_block_tag_t);

 if (jbd2_has_feature_csum2(journal))
  sz += sizeof(__u16);

 if (jbd2_has_feature_64bit(journal))
  return sz;
 else
  return sz - sizeof(__u32);
}
