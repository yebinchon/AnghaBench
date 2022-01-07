
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct j1939_priv {struct net_device* ndev; } ;


 int J1939_CAN_ID ;
 int J1939_CAN_MASK ;
 int can_rx_register (int ,struct net_device*,int ,int ,int ,struct j1939_priv*,char*,int *) ;
 int dev_net (struct net_device*) ;
 int j1939_can_recv ;
 int j1939_priv_get (struct j1939_priv*) ;
 int j1939_priv_put (struct j1939_priv*) ;

__attribute__((used)) static int j1939_can_rx_register(struct j1939_priv *priv)
{
 struct net_device *ndev = priv->ndev;
 int ret;

 j1939_priv_get(priv);
 ret = can_rx_register(dev_net(ndev), ndev, J1939_CAN_ID, J1939_CAN_MASK,
         j1939_can_recv, priv, "j1939", ((void*)0));
 if (ret < 0) {
  j1939_priv_put(priv);
  return ret;
 }

 return 0;
}
