
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int journal_t ;
struct TYPE_3__ {scalar_t__ s_checksum_type; } ;
typedef TYPE_1__ journal_superblock_t ;


 scalar_t__ JBD2_CRC32C_CHKSUM ;
 int jbd2_journal_has_csum_v2or3_feature (int *) ;

__attribute__((used)) static int jbd2_verify_csum_type(journal_t *j, journal_superblock_t *sb)
{
 if (!jbd2_journal_has_csum_v2or3_feature(j))
  return 1;

 return sb->s_checksum_type == JBD2_CRC32C_CHKSUM;
}
