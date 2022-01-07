
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_trans {TYPE_1__* t_mountp; } ;
struct xfs_bmbt_irec {int br_blockcount; int br_startblock; } ;
struct TYPE_2__ {int m_sb; } ;


 int XFS_REFCOUNT_DECREASE ;
 int __xfs_refcount_add (struct xfs_trans*,int ,int ,int ) ;
 int xfs_sb_version_hasreflink (int *) ;

void
xfs_refcount_decrease_extent(
 struct xfs_trans *tp,
 struct xfs_bmbt_irec *PREV)
{
 if (!xfs_sb_version_hasreflink(&tp->t_mountp->m_sb))
  return;

 __xfs_refcount_add(tp, XFS_REFCOUNT_DECREASE, PREV->br_startblock,
   PREV->br_blockcount);
}
