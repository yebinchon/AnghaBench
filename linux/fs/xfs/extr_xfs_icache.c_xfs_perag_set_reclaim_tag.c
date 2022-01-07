
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_perag {int pag_agno; int pag_ici_reclaimable; int pag_ici_lock; struct xfs_mount* pag_mount; } ;
struct xfs_mount {int m_perag_lock; int m_perag_tree; } ;


 int XFS_ICI_RECLAIM_TAG ;
 int _RET_IP_ ;
 int lockdep_assert_held (int *) ;
 int radix_tree_tag_set (int *,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xfs_perag_set_reclaim (struct xfs_mount*,int ,int,int ) ;
 int xfs_reclaim_work_queue (struct xfs_mount*) ;

__attribute__((used)) static void
xfs_perag_set_reclaim_tag(
 struct xfs_perag *pag)
{
 struct xfs_mount *mp = pag->pag_mount;

 lockdep_assert_held(&pag->pag_ici_lock);
 if (pag->pag_ici_reclaimable++)
  return;


 spin_lock(&mp->m_perag_lock);
 radix_tree_tag_set(&mp->m_perag_tree, pag->pag_agno,
      XFS_ICI_RECLAIM_TAG);
 spin_unlock(&mp->m_perag_lock);


 xfs_reclaim_work_queue(mp);

 trace_xfs_perag_set_reclaim(mp, pag->pag_agno, -1, _RET_IP_);
}
