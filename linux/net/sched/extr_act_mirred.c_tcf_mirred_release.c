
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_mirred {int tcfm_dev; int tcfm_list; } ;
struct tc_action {int dummy; } ;
struct net_device {int dummy; } ;


 int dev_put (struct net_device*) ;
 int list_del (int *) ;
 int mirred_list_lock ;
 struct net_device* rcu_dereference_protected (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct tcf_mirred* to_mirred (struct tc_action*) ;

__attribute__((used)) static void tcf_mirred_release(struct tc_action *a)
{
 struct tcf_mirred *m = to_mirred(a);
 struct net_device *dev;

 spin_lock(&mirred_list_lock);
 list_del(&m->tcfm_list);
 spin_unlock(&mirred_list_lock);


 dev = rcu_dereference_protected(m->tcfm_dev, 1);
 if (dev)
  dev_put(dev);
}
