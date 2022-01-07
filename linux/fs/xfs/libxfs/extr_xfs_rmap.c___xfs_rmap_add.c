
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct xfs_trans {int t_mountp; } ;
struct xfs_bmbt_irec {int br_state; int br_blockcount; int br_startoff; int br_startblock; } ;
struct xfs_rmap_intent {int ri_type; int ri_whichfork; int ri_list; struct xfs_bmbt_irec ri_bmap; int ri_owner; } ;
typedef enum xfs_rmap_intent_type { ____Placeholder_xfs_rmap_intent_type } xfs_rmap_intent_type ;


 int INIT_LIST_HEAD (int *) ;
 int KM_NOFS ;
 int XFS_DEFER_OPS_TYPE_RMAP ;
 int XFS_FSB_TO_AGBNO (int ,int ) ;
 int XFS_FSB_TO_AGNO (int ,int ) ;
 struct xfs_rmap_intent* kmem_alloc (int,int ) ;
 int trace_xfs_rmap_defer (int ,int ,int,int ,int ,int,int ,int ,int ) ;
 int xfs_defer_add (struct xfs_trans*,int ,int *) ;

__attribute__((used)) static void
__xfs_rmap_add(
 struct xfs_trans *tp,
 enum xfs_rmap_intent_type type,
 uint64_t owner,
 int whichfork,
 struct xfs_bmbt_irec *bmap)
{
 struct xfs_rmap_intent *ri;

 trace_xfs_rmap_defer(tp->t_mountp,
   XFS_FSB_TO_AGNO(tp->t_mountp, bmap->br_startblock),
   type,
   XFS_FSB_TO_AGBNO(tp->t_mountp, bmap->br_startblock),
   owner, whichfork,
   bmap->br_startoff,
   bmap->br_blockcount,
   bmap->br_state);

 ri = kmem_alloc(sizeof(struct xfs_rmap_intent), KM_NOFS);
 INIT_LIST_HEAD(&ri->ri_list);
 ri->ri_type = type;
 ri->ri_owner = owner;
 ri->ri_whichfork = whichfork;
 ri->ri_bmap = *bmap;

 xfs_defer_add(tp, XFS_DEFER_OPS_TYPE_RMAP, &ri->ri_list);
}
