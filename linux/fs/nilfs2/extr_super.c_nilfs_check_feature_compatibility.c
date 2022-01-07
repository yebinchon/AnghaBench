
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct nilfs_super_block {int s_feature_compat_ro; int s_feature_incompat; } ;
typedef int __u64 ;


 int EINVAL ;
 int KERN_ERR ;
 int NILFS_FEATURE_COMPAT_RO_SUPP ;
 int NILFS_FEATURE_INCOMPAT_SUPP ;
 int le64_to_cpu (int ) ;
 int nilfs_msg (struct super_block*,int ,char*,unsigned long long) ;
 int sb_rdonly (struct super_block*) ;

int nilfs_check_feature_compatibility(struct super_block *sb,
          struct nilfs_super_block *sbp)
{
 __u64 features;

 features = le64_to_cpu(sbp->s_feature_incompat) &
  ~NILFS_FEATURE_INCOMPAT_SUPP;
 if (features) {
  nilfs_msg(sb, KERN_ERR,
     "couldn't mount because of unsupported optional features (%llx)",
     (unsigned long long)features);
  return -EINVAL;
 }
 features = le64_to_cpu(sbp->s_feature_compat_ro) &
  ~NILFS_FEATURE_COMPAT_RO_SUPP;
 if (!sb_rdonly(sb) && features) {
  nilfs_msg(sb, KERN_ERR,
     "couldn't mount RDWR because of unsupported optional features (%llx)",
     (unsigned long long)features);
  return -EINVAL;
 }
 return 0;
}
