
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct TYPE_2__ {struct xfs_mount* li_mountp; } ;
struct xfs_qoff_logitem {int qql_flags; struct xfs_qoff_logitem* qql_start_lip; TYPE_1__ qql_item; } ;
struct xfs_mount {int dummy; } ;


 int XFS_LI_QUOTAOFF ;
 struct xfs_qoff_logitem* kmem_zalloc (int,int ) ;
 int xfs_log_item_init (struct xfs_mount*,TYPE_1__*,int ,int *) ;
 int xfs_qm_qoff_logitem_ops ;
 int xfs_qm_qoffend_logitem_ops ;

struct xfs_qoff_logitem *
xfs_qm_qoff_logitem_init(
 struct xfs_mount *mp,
 struct xfs_qoff_logitem *start,
 uint flags)
{
 struct xfs_qoff_logitem *qf;

 qf = kmem_zalloc(sizeof(struct xfs_qoff_logitem), 0);

 xfs_log_item_init(mp, &qf->qql_item, XFS_LI_QUOTAOFF, start ?
   &xfs_qm_qoffend_logitem_ops : &xfs_qm_qoff_logitem_ops);
 qf->qql_item.li_mountp = mp;
 qf->qql_start_lip = start;
 qf->qql_flags = flags;
 return qf;
}
