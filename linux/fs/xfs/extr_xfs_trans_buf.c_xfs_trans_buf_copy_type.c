
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf_log_item {int __bli_format; } ;
struct xfs_buf {struct xfs_buf_log_item* b_log_item; } ;
typedef enum xfs_blft { ____Placeholder_xfs_blft } xfs_blft ;


 int xfs_blft_from_flags (int *) ;
 int xfs_blft_to_flags (int *,int) ;

void
xfs_trans_buf_copy_type(
 struct xfs_buf *dst_bp,
 struct xfs_buf *src_bp)
{
 struct xfs_buf_log_item *sbip = src_bp->b_log_item;
 struct xfs_buf_log_item *dbip = dst_bp->b_log_item;
 enum xfs_blft type;

 type = xfs_blft_from_flags(&sbip->__bli_format);
 xfs_blft_to_flags(&dbip->__bli_format, type);
}
