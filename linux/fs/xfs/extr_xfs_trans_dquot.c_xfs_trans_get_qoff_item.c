
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int t_mountp; } ;
typedef TYPE_1__ xfs_trans_t ;
struct TYPE_10__ {int qql_item; } ;
typedef TYPE_2__ xfs_qoff_logitem_t ;
typedef int uint ;


 int ASSERT (int ) ;
 TYPE_2__* xfs_qm_qoff_logitem_init (int ,TYPE_2__*,int ) ;
 int xfs_trans_add_item (TYPE_1__*,int *) ;

xfs_qoff_logitem_t *
xfs_trans_get_qoff_item(
 xfs_trans_t *tp,
 xfs_qoff_logitem_t *startqoff,
 uint flags)
{
 xfs_qoff_logitem_t *q;

 ASSERT(tp != ((void*)0));

 q = xfs_qm_qoff_logitem_init(tp->t_mountp, startqoff, flags);
 ASSERT(q != ((void*)0));




 xfs_trans_add_item(tp, &q->qql_item);
 return q;
}
