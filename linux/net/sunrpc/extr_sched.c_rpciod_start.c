
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;


 int WQ_HIGHPRI ;
 int WQ_MEM_RECLAIM ;
 int WQ_UNBOUND ;
 struct workqueue_struct* alloc_workqueue (char*,int,int ) ;
 int destroy_workqueue (struct workqueue_struct*) ;
 int dprintk (char*) ;
 struct workqueue_struct* rpciod_workqueue ;
 struct workqueue_struct* xprtiod_workqueue ;

__attribute__((used)) static int rpciod_start(void)
{
 struct workqueue_struct *wq;




 dprintk("RPC:       creating workqueue rpciod\n");
 wq = alloc_workqueue("rpciod", WQ_MEM_RECLAIM | WQ_UNBOUND, 0);
 if (!wq)
  goto out_failed;
 rpciod_workqueue = wq;

 wq = alloc_workqueue("xprtiod", WQ_UNBOUND|WQ_MEM_RECLAIM|WQ_HIGHPRI, 0);
 if (!wq)
  goto free_rpciod;
 xprtiod_workqueue = wq;
 return 1;
free_rpciod:
 wq = rpciod_workqueue;
 rpciod_workqueue = ((void*)0);
 destroy_workqueue(wq);
out_failed:
 return 0;
}
