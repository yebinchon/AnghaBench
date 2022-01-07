
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fsblock_t ;
typedef int xfs_extlen_t ;
struct xfs_trans {int t_mountp; } ;
struct xfs_refcount_intent {int ri_type; int ri_list; int ri_blockcount; int ri_startblock; } ;
typedef enum xfs_refcount_intent_type { ____Placeholder_xfs_refcount_intent_type } xfs_refcount_intent_type ;


 int INIT_LIST_HEAD (int *) ;
 int KM_NOFS ;
 int XFS_DEFER_OPS_TYPE_REFCOUNT ;
 int XFS_FSB_TO_AGBNO (int ,int ) ;
 int XFS_FSB_TO_AGNO (int ,int ) ;
 struct xfs_refcount_intent* kmem_alloc (int,int ) ;
 int trace_xfs_refcount_defer (int ,int ,int,int ,int ) ;
 int xfs_defer_add (struct xfs_trans*,int ,int *) ;

__attribute__((used)) static void
__xfs_refcount_add(
 struct xfs_trans *tp,
 enum xfs_refcount_intent_type type,
 xfs_fsblock_t startblock,
 xfs_extlen_t blockcount)
{
 struct xfs_refcount_intent *ri;

 trace_xfs_refcount_defer(tp->t_mountp,
   XFS_FSB_TO_AGNO(tp->t_mountp, startblock),
   type, XFS_FSB_TO_AGBNO(tp->t_mountp, startblock),
   blockcount);

 ri = kmem_alloc(sizeof(struct xfs_refcount_intent),
   KM_NOFS);
 INIT_LIST_HEAD(&ri->ri_list);
 ri->ri_type = type;
 ri->ri_startblock = startblock;
 ri->ri_blockcount = blockcount;

 xfs_defer_add(tp, XFS_DEFER_OPS_TYPE_REFCOUNT, &ri->ri_list);
}
