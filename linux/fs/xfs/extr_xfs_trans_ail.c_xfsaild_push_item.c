
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct xfs_log_item {TYPE_1__* li_ops; } ;
struct xfs_ail {int ail_buf_list; int ail_mount; } ;
struct TYPE_2__ {int (* iop_push ) (struct xfs_log_item*,int *) ;} ;


 int XFS_ERRTAG_LOG_ITEM_PIN ;
 int XFS_ITEM_PINNED ;
 scalar_t__ XFS_TEST_ERROR (int,int ,int ) ;
 int stub1 (struct xfs_log_item*,int *) ;

__attribute__((used)) static inline uint
xfsaild_push_item(
 struct xfs_ail *ailp,
 struct xfs_log_item *lip)
{




 if (XFS_TEST_ERROR(0, ailp->ail_mount, XFS_ERRTAG_LOG_ITEM_PIN))
  return XFS_ITEM_PINNED;







 if (!lip->li_ops->iop_push)
  return XFS_ITEM_PINNED;
 return lip->li_ops->iop_push(lip, &ailp->ail_buf_list);
}
