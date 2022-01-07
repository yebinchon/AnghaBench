
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;


 int ENOMEM ;
 int WQ_MEM_RECLAIM ;
 struct workqueue_struct* alloc_workqueue (char*,int ,int ) ;
 int dprintk (char*) ;
 struct workqueue_struct* nfsiod_workqueue ;

__attribute__((used)) static int nfsiod_start(void)
{
 struct workqueue_struct *wq;
 dprintk("RPC:       creating workqueue nfsiod\n");
 wq = alloc_workqueue("nfsiod", WQ_MEM_RECLAIM, 0);
 if (wq == ((void*)0))
  return -ENOMEM;
 nfsiod_workqueue = wq;
 return 0;
}
