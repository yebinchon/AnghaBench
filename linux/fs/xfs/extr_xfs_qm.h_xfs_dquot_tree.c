
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;
struct xfs_quotainfo {struct radix_tree_root qi_pquota_tree; struct radix_tree_root qi_gquota_tree; struct radix_tree_root qi_uquota_tree; } ;


 int ASSERT (int ) ;




__attribute__((used)) static inline struct radix_tree_root *
xfs_dquot_tree(
 struct xfs_quotainfo *qi,
 int type)
{
 switch (type) {
 case 128:
  return &qi->qi_uquota_tree;
 case 130:
  return &qi->qi_gquota_tree;
 case 129:
  return &qi->qi_pquota_tree;
 default:
  ASSERT(0);
 }
 return ((void*)0);
}
