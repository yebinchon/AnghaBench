
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int journal_t ;
struct TYPE_3__ {int s_checksum; } ;
typedef TYPE_1__ journal_superblock_t ;
typedef int __u32 ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int jbd2_chksum (int *,int ,char*,int) ;

__attribute__((used)) static __be32 jbd2_superblock_csum(journal_t *j, journal_superblock_t *sb)
{
 __u32 csum;
 __be32 old_csum;

 old_csum = sb->s_checksum;
 sb->s_checksum = 0;
 csum = jbd2_chksum(j, ~0, (char *)sb, sizeof(journal_superblock_t));
 sb->s_checksum = old_csum;

 return cpu_to_be32(csum);
}
