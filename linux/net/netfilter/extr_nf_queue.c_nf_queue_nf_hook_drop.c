
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_queue_handler {int (* nf_hook_drop ) (struct net*) ;} ;
struct TYPE_2__ {int queue_handler; } ;
struct net {TYPE_1__ nf; } ;


 struct nf_queue_handler* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct net*) ;

void nf_queue_nf_hook_drop(struct net *net)
{
 const struct nf_queue_handler *qh;

 rcu_read_lock();
 qh = rcu_dereference(net->nf.queue_handler);
 if (qh)
  qh->nf_hook_drop(net);
 rcu_read_unlock();
}
