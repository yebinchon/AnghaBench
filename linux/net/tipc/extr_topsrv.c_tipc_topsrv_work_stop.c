
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_topsrv {int send_wq; int rcv_wq; } ;


 int destroy_workqueue (int ) ;

__attribute__((used)) static void tipc_topsrv_work_stop(struct tipc_topsrv *s)
{
 destroy_workqueue(s->rcv_wq);
 destroy_workqueue(s->send_wq);
}
