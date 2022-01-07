
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_net_work {int work; int addr; struct net* net; } ;
struct net {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct tipc_net_work* kzalloc (int,int ) ;
 int schedule_work (int *) ;
 int tipc_net_finalize_work ;

void tipc_sched_net_finalize(struct net *net, u32 addr)
{
 struct tipc_net_work *fwork = kzalloc(sizeof(*fwork), GFP_ATOMIC);

 if (!fwork)
  return;
 INIT_WORK(&fwork->work, tipc_net_finalize_work);
 fwork->net = net;
 fwork->addr = addr;
 schedule_work(&fwork->work);
}
