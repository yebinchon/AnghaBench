
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_topsrv {void* rcv_wq; void* send_wq; } ;


 int ENOMEM ;
 void* alloc_ordered_workqueue (char*,int ) ;
 int destroy_workqueue (void*) ;
 int pr_err (char*) ;

__attribute__((used)) static int tipc_topsrv_work_start(struct tipc_topsrv *s)
{
 s->rcv_wq = alloc_ordered_workqueue("tipc_rcv", 0);
 if (!s->rcv_wq) {
  pr_err("can't start tipc receive workqueue\n");
  return -ENOMEM;
 }

 s->send_wq = alloc_ordered_workqueue("tipc_send", 0);
 if (!s->send_wq) {
  pr_err("can't start tipc send workqueue\n");
  destroy_workqueue(s->rcv_wq);
  return -ENOMEM;
 }

 return 0;
}
