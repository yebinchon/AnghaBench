
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_queue_handler {int dummy; } ;
struct TYPE_2__ {int queue_handler; } ;
struct net {TYPE_1__ nf; } ;


 int WARN_ON (int ) ;
 int rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct nf_queue_handler const*) ;

void nf_register_queue_handler(struct net *net, const struct nf_queue_handler *qh)
{

 WARN_ON(rcu_access_pointer(net->nf.queue_handler));
 rcu_assign_pointer(net->nf.queue_handler, qh);
}
