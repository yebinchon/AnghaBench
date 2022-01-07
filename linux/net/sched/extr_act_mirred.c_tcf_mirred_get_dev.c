
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tc_action_priv_destructor ;
struct tcf_mirred {int tcfm_dev; } ;
struct tc_action {int dummy; } ;
struct net_device {int dummy; } ;


 int dev_hold (struct net_device*) ;
 struct net_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int tcf_mirred_dev_put ;
 struct tcf_mirred* to_mirred (struct tc_action const*) ;

__attribute__((used)) static struct net_device *
tcf_mirred_get_dev(const struct tc_action *a,
     tc_action_priv_destructor *destructor)
{
 struct tcf_mirred *m = to_mirred(a);
 struct net_device *dev;

 rcu_read_lock();
 dev = rcu_dereference(m->tcfm_dev);
 if (dev) {
  dev_hold(dev);
  *destructor = tcf_mirred_dev_put;
 }
 rcu_read_unlock();

 return dev;
}
