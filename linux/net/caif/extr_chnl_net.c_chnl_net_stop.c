
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct chnl_net {int chnl; int state; } ;


 int ASSERT_RTNL () ;
 int CAIF_DISCONNECTED ;
 int caif_disconnect_client (int ,int *) ;
 int dev_net (struct net_device*) ;
 struct chnl_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static int chnl_net_stop(struct net_device *dev)
{
 struct chnl_net *priv;

 ASSERT_RTNL();
 priv = netdev_priv(dev);
 priv->state = CAIF_DISCONNECTED;
 caif_disconnect_client(dev_net(dev), &priv->chnl);
 return 0;
}
