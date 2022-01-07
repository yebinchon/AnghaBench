
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct mmp_struct {int mmp_checksum; } ;


 int ext4_has_metadata_csum (struct super_block*) ;
 int ext4_mmp_csum (struct super_block*,struct mmp_struct*) ;

__attribute__((used)) static void ext4_mmp_csum_set(struct super_block *sb, struct mmp_struct *mmp)
{
 if (!ext4_has_metadata_csum(sb))
  return;

 mmp->mmp_checksum = ext4_mmp_csum(sb, mmp);
}
