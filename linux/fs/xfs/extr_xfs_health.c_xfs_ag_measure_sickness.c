
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_perag {unsigned int pag_sick; unsigned int pag_checked; int pag_state_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
xfs_ag_measure_sickness(
 struct xfs_perag *pag,
 unsigned int *sick,
 unsigned int *checked)
{
 spin_lock(&pag->pag_state_lock);
 *sick = pag->pag_sick;
 *checked = pag->pag_checked;
 spin_unlock(&pag->pag_state_lock);
}
