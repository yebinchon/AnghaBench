
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ li_type; int li_flags; } ;
struct xfs_buf_log_item {TYPE_1__ bli_item; } ;
struct xfs_buf {struct xfs_buf_log_item* b_log_item; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_LI_BUF ;
 int XFS_LI_DIRTY ;
 int test_bit (int ,int *) ;

bool
xfs_trans_buf_is_dirty(
 struct xfs_buf *bp)
{
 struct xfs_buf_log_item *bip = bp->b_log_item;

 if (!bip)
  return 0;
 ASSERT(bip->bli_item.li_type == XFS_LI_BUF);
 return test_bit(XFS_LI_DIRTY, &bip->bli_item.li_flags);
}
