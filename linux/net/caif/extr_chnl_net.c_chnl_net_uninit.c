
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct chnl_net {int list_field; } ;


 int ASSERT_RTNL () ;
 struct chnl_net* netdev_priv (struct net_device*) ;
 int robust_list_del (int *) ;

__attribute__((used)) static void chnl_net_uninit(struct net_device *dev)
{
 struct chnl_net *priv;
 ASSERT_RTNL();
 priv = netdev_priv(dev);
 robust_list_del(&priv->list_field);
}
