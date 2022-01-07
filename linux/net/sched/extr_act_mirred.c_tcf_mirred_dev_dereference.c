
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_mirred {int tcf_lock; int tcfm_dev; } ;
struct net_device {int dummy; } ;


 int lockdep_is_held (int *) ;
 struct net_device* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static struct net_device *tcf_mirred_dev_dereference(struct tcf_mirred *m)
{
 return rcu_dereference_protected(m->tcfm_dev,
      lockdep_is_held(&m->tcf_lock));
}
