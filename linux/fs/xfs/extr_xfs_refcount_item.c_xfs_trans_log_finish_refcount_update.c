
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_fsblock_t ;
typedef int xfs_extlen_t ;
struct xfs_trans {int t_flags; } ;
struct TYPE_2__ {int li_flags; } ;
struct xfs_cud_log_item {TYPE_1__ cud_item; } ;
struct xfs_btree_cur {int dummy; } ;
typedef enum xfs_refcount_intent_type { ____Placeholder_xfs_refcount_intent_type } xfs_refcount_intent_type ;


 int XFS_LI_DIRTY ;
 int XFS_TRANS_DIRTY ;
 int set_bit (int ,int *) ;
 int xfs_refcount_finish_one (struct xfs_trans*,int,int ,int ,int *,int *,struct xfs_btree_cur**) ;

__attribute__((used)) static int
xfs_trans_log_finish_refcount_update(
 struct xfs_trans *tp,
 struct xfs_cud_log_item *cudp,
 enum xfs_refcount_intent_type type,
 xfs_fsblock_t startblock,
 xfs_extlen_t blockcount,
 xfs_fsblock_t *new_fsb,
 xfs_extlen_t *new_len,
 struct xfs_btree_cur **pcur)
{
 int error;

 error = xfs_refcount_finish_one(tp, type, startblock,
   blockcount, new_fsb, new_len, pcur);
 tp->t_flags |= XFS_TRANS_DIRTY;
 set_bit(XFS_LI_DIRTY, &cudp->cud_item.li_flags);

 return error;
}
