
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct nfqnl_instance {scalar_t__ peer_portid; } ;
struct nfnl_queue_net {int dummy; } ;


 int ENODEV ;
 int EPERM ;
 struct nfqnl_instance* ERR_PTR (int ) ;
 struct nfqnl_instance* instance_lookup (struct nfnl_queue_net*,int ) ;

__attribute__((used)) static struct nfqnl_instance *
verdict_instance_lookup(struct nfnl_queue_net *q, u16 queue_num, u32 nlportid)
{
 struct nfqnl_instance *queue;

 queue = instance_lookup(q, queue_num);
 if (!queue)
  return ERR_PTR(-ENODEV);

 if (queue->peer_portid != nlportid)
  return ERR_PTR(-EPERM);

 return queue;
}
