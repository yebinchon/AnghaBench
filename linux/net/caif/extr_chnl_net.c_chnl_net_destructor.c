
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct chnl_net {int chnl; } ;


 int caif_free_client (int *) ;
 struct chnl_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static void chnl_net_destructor(struct net_device *dev)
{
 struct chnl_net *priv = netdev_priv(dev);
 caif_free_client(&priv->chnl);
}
