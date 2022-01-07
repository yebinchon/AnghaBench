
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct l2tp_session {int dummy; } ;
struct l2tp_eth_sess {int dev; } ;


 int THIS_MODULE ;
 struct l2tp_eth_sess* l2tp_session_priv (struct l2tp_session*) ;
 int module_put (int ) ;
 struct net_device* rtnl_dereference (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int unregister_netdevice (struct net_device*) ;

__attribute__((used)) static void l2tp_eth_delete(struct l2tp_session *session)
{
 struct l2tp_eth_sess *spriv;
 struct net_device *dev;

 if (session) {
  spriv = l2tp_session_priv(session);

  rtnl_lock();
  dev = rtnl_dereference(spriv->dev);
  if (dev) {
   unregister_netdevice(dev);
   rtnl_unlock();
   module_put(THIS_MODULE);
  } else {
   rtnl_unlock();
  }
 }
}
