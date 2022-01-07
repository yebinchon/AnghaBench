
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int t_flags; } ;
typedef TYPE_2__ xfs_trans_t ;
struct TYPE_6__ {int li_flags; } ;
struct TYPE_8__ {TYPE_1__ qql_item; } ;
typedef TYPE_3__ xfs_qoff_logitem_t ;


 int XFS_LI_DIRTY ;
 int XFS_TRANS_DIRTY ;
 int set_bit (int ,int *) ;

void
xfs_trans_log_quotaoff_item(
 xfs_trans_t *tp,
 xfs_qoff_logitem_t *qlp)
{
 tp->t_flags |= XFS_TRANS_DIRTY;
 set_bit(XFS_LI_DIRTY, &qlp->qql_item.li_flags);
}
