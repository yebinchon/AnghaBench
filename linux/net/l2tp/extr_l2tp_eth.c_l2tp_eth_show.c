
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct net_device {int name; } ;
struct l2tp_session {int dummy; } ;
struct l2tp_eth_sess {int dev; } ;


 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 struct l2tp_eth_sess* l2tp_session_priv (struct l2tp_session*) ;
 struct net_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void l2tp_eth_show(struct seq_file *m, void *arg)
{
 struct l2tp_session *session = arg;
 struct l2tp_eth_sess *spriv = l2tp_session_priv(session);
 struct net_device *dev;

 rcu_read_lock();
 dev = rcu_dereference(spriv->dev);
 if (!dev) {
  rcu_read_unlock();
  return;
 }
 dev_hold(dev);
 rcu_read_unlock();

 seq_printf(m, "   interface %s\n", dev->name);

 dev_put(dev);
}
