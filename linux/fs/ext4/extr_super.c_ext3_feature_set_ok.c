
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int ext4_has_feature_journal (struct super_block*) ;
 scalar_t__ ext4_has_unknown_ext3_incompat_features (struct super_block*) ;
 scalar_t__ ext4_has_unknown_ext3_ro_compat_features (struct super_block*) ;
 scalar_t__ sb_rdonly (struct super_block*) ;

__attribute__((used)) static inline int ext3_feature_set_ok(struct super_block *sb)
{
 if (ext4_has_unknown_ext3_incompat_features(sb))
  return 0;
 if (!ext4_has_feature_journal(sb))
  return 0;
 if (sb_rdonly(sb))
  return 1;
 if (ext4_has_unknown_ext3_ro_compat_features(sb))
  return 0;
 return 1;
}
