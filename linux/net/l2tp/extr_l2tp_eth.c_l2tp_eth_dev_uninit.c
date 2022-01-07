
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct l2tp_eth_sess {int dev; } ;
struct l2tp_eth {int session; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 struct l2tp_eth_sess* l2tp_session_priv (int ) ;
 struct l2tp_eth* netdev_priv (struct net_device*) ;

__attribute__((used)) static void l2tp_eth_dev_uninit(struct net_device *dev)
{
 struct l2tp_eth *priv = netdev_priv(dev);
 struct l2tp_eth_sess *spriv;

 spriv = l2tp_session_priv(priv->session);
 RCU_INIT_POINTER(spriv->dev, ((void*)0));



}
