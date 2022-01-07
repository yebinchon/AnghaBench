
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_pwork_ctl {int error; int * wq; } ;


 int destroy_workqueue (int *) ;

int
xfs_pwork_destroy(
 struct xfs_pwork_ctl *pctl)
{
 destroy_workqueue(pctl->wq);
 pctl->wq = ((void*)0);
 return pctl->error;
}
