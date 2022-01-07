
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_phys_extent {int pe_flags; } ;
typedef enum xfs_refcount_intent_type { ____Placeholder_xfs_refcount_intent_type } xfs_refcount_intent_type ;


 int ASSERT (int ) ;





__attribute__((used)) static void
xfs_trans_set_refcount_flags(
 struct xfs_phys_extent *refc,
 enum xfs_refcount_intent_type type)
{
 refc->pe_flags = 0;
 switch (type) {
 case 128:
 case 130:
 case 131:
 case 129:
  refc->pe_flags |= type;
  break;
 default:
  ASSERT(0);
 }
}
