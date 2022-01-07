
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_perag {unsigned int pag_sick; unsigned int pag_checked; int pag_state_lock; int pag_agno; int pag_mount; } ;


 int ASSERT (int) ;
 unsigned int XFS_SICK_AG_PRIMARY ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xfs_ag_mark_healthy (int ,int ,unsigned int) ;

void
xfs_ag_mark_healthy(
 struct xfs_perag *pag,
 unsigned int mask)
{
 ASSERT(!(mask & ~XFS_SICK_AG_PRIMARY));
 trace_xfs_ag_mark_healthy(pag->pag_mount, pag->pag_agno, mask);

 spin_lock(&pag->pag_state_lock);
 pag->pag_sick &= ~mask;
 pag->pag_checked |= mask;
 spin_unlock(&pag->pag_state_lock);
}
