
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_pwork_ctl {int wq; int nr_work; } ;
struct xfs_pwork {int work; struct xfs_pwork_ctl* pctl; } ;


 int INIT_WORK (int *,int ) ;
 int atomic_inc (int *) ;
 int queue_work (int ,int *) ;
 int xfs_pwork_work ;

void
xfs_pwork_queue(
 struct xfs_pwork_ctl *pctl,
 struct xfs_pwork *pwork)
{
 INIT_WORK(&pwork->work, xfs_pwork_work);
 pwork->pctl = pctl;
 atomic_inc(&pctl->nr_work);
 queue_work(pctl->wq, &pwork->work);
}
