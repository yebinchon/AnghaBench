
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_dir2_leaf_tail_t ;
typedef int uint ;
struct TYPE_3__ {scalar_t__ magic; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
struct xfs_dir2_leaf {TYPE_2__ hdr; } ;
struct xfs_da_args {int trans; int geo; } ;
struct xfs_buf {struct xfs_dir2_leaf* b_addr; } ;
typedef int __be16 ;


 int ASSERT (int) ;
 int XFS_DIR2_LEAF1_MAGIC ;
 int XFS_DIR3_LEAF1_MAGIC ;
 scalar_t__ cpu_to_be16 (int ) ;
 int * xfs_dir2_leaf_bests_p (int *) ;
 int * xfs_dir2_leaf_tail_p (int ,struct xfs_dir2_leaf*) ;
 int xfs_trans_log_buf (int ,struct xfs_buf*,int ,int ) ;

__attribute__((used)) static void
xfs_dir3_leaf_log_bests(
 struct xfs_da_args *args,
 struct xfs_buf *bp,
 int first,
 int last)
{
 __be16 *firstb;
 __be16 *lastb;
 struct xfs_dir2_leaf *leaf = bp->b_addr;
 xfs_dir2_leaf_tail_t *ltp;

 ASSERT(leaf->hdr.info.magic == cpu_to_be16(XFS_DIR2_LEAF1_MAGIC) ||
        leaf->hdr.info.magic == cpu_to_be16(XFS_DIR3_LEAF1_MAGIC));

 ltp = xfs_dir2_leaf_tail_p(args->geo, leaf);
 firstb = xfs_dir2_leaf_bests_p(ltp) + first;
 lastb = xfs_dir2_leaf_bests_p(ltp) + last;
 xfs_trans_log_buf(args->trans, bp,
  (uint)((char *)firstb - (char *)leaf),
  (uint)((char *)lastb - (char *)leaf + sizeof(*lastb) - 1));
}
