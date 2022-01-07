
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int li_lv_shadow; } ;
struct TYPE_7__ {TYPE_1__ qli_item; } ;
struct TYPE_8__ {int q_mount; int q_qlock; TYPE_2__ q_logitem; int q_lru; } ;
typedef TYPE_3__ xfs_dquot_t ;


 int ASSERT (int ) ;
 int XFS_STATS_DEC (int ,int ) ;
 int kmem_free (int ) ;
 int kmem_zone_free (int ,TYPE_3__*) ;
 int list_empty (int *) ;
 int mutex_destroy (int *) ;
 int xfs_qm_dqzone ;
 int xs_qm_dquot ;

void
xfs_qm_dqdestroy(
 xfs_dquot_t *dqp)
{
 ASSERT(list_empty(&dqp->q_lru));

 kmem_free(dqp->q_logitem.qli_item.li_lv_shadow);
 mutex_destroy(&dqp->q_qlock);

 XFS_STATS_DEC(dqp->q_mount, xs_qm_dquot);
 kmem_zone_free(xfs_qm_dqzone, dqp);
}
