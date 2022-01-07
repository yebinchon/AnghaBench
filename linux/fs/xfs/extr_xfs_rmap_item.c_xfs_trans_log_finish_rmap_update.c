
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_fsblock_t ;
typedef int xfs_fileoff_t ;
typedef int xfs_filblks_t ;
typedef int xfs_exntst_t ;
typedef int uint64_t ;
struct xfs_trans {int t_flags; } ;
struct TYPE_2__ {int li_flags; } ;
struct xfs_rud_log_item {TYPE_1__ rud_item; } ;
struct xfs_btree_cur {int dummy; } ;
typedef enum xfs_rmap_intent_type { ____Placeholder_xfs_rmap_intent_type } xfs_rmap_intent_type ;


 int XFS_LI_DIRTY ;
 int XFS_TRANS_DIRTY ;
 int set_bit (int ,int *) ;
 int xfs_rmap_finish_one (struct xfs_trans*,int,int ,int,int ,int ,int ,int ,struct xfs_btree_cur**) ;

__attribute__((used)) static int
xfs_trans_log_finish_rmap_update(
 struct xfs_trans *tp,
 struct xfs_rud_log_item *rudp,
 enum xfs_rmap_intent_type type,
 uint64_t owner,
 int whichfork,
 xfs_fileoff_t startoff,
 xfs_fsblock_t startblock,
 xfs_filblks_t blockcount,
 xfs_exntst_t state,
 struct xfs_btree_cur **pcur)
{
 int error;

 error = xfs_rmap_finish_one(tp, type, owner, whichfork, startoff,
   startblock, blockcount, state, pcur);
 tp->t_flags |= XFS_TRANS_DIRTY;
 set_bit(XFS_LI_DIRTY, &rudp->rud_item.li_flags);

 return error;
}
