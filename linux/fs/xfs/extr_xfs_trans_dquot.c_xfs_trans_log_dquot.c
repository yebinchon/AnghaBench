
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int t_flags; } ;
typedef TYPE_3__ xfs_trans_t ;
struct TYPE_8__ {int li_flags; } ;
struct TYPE_9__ {TYPE_1__ qli_item; } ;
struct TYPE_11__ {TYPE_2__ q_logitem; } ;
typedef TYPE_4__ xfs_dquot_t ;


 int ASSERT (int ) ;
 int XFS_DQ_IS_LOCKED (TYPE_4__*) ;
 int XFS_LI_DIRTY ;
 int XFS_TRANS_DIRTY ;
 int set_bit (int ,int *) ;

void
xfs_trans_log_dquot(
 xfs_trans_t *tp,
 xfs_dquot_t *dqp)
{
 ASSERT(XFS_DQ_IS_LOCKED(dqp));

 tp->t_flags |= XFS_TRANS_DIRTY;
 set_bit(XFS_LI_DIRTY, &dqp->q_logitem.qli_item.li_flags);
}
