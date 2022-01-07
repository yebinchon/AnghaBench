
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;


 int destroy_workqueue (struct workqueue_struct*) ;
 struct workqueue_struct* nfsiod_workqueue ;

__attribute__((used)) static void nfsiod_stop(void)
{
 struct workqueue_struct *wq;

 wq = nfsiod_workqueue;
 if (wq == ((void*)0))
  return;
 nfsiod_workqueue = ((void*)0);
 destroy_workqueue(wq);
}
