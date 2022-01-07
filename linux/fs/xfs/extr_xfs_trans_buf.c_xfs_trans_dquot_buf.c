
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_6__ {struct xfs_buf_log_item* b_log_item; } ;
typedef TYPE_2__ xfs_buf_t ;
typedef int uint ;
struct TYPE_5__ {int blf_flags; } ;
struct xfs_buf_log_item {TYPE_1__ __bli_format; } ;


 int ASSERT (int) ;
 int XFS_BLFT_GDQUOT_BUF ;
 int XFS_BLFT_PDQUOT_BUF ;
 int XFS_BLFT_UDQUOT_BUF ;
 int XFS_BLFT_UNKNOWN_BUF ;



 int xfs_trans_buf_set_type (int *,TYPE_2__*,int) ;

void
xfs_trans_dquot_buf(
 xfs_trans_t *tp,
 xfs_buf_t *bp,
 uint type)
{
 struct xfs_buf_log_item *bip = bp->b_log_item;

 ASSERT(type == 128 ||
        type == 129 ||
        type == 130);

 bip->__bli_format.blf_flags |= type;

 switch (type) {
 case 128:
  type = XFS_BLFT_UDQUOT_BUF;
  break;
 case 129:
  type = XFS_BLFT_PDQUOT_BUF;
  break;
 case 130:
  type = XFS_BLFT_GDQUOT_BUF;
  break;
 default:
  type = XFS_BLFT_UNKNOWN_BUF;
  break;
 }

 xfs_trans_buf_set_type(tp, bp, type);
}
