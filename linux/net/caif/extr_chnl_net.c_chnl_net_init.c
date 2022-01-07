
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct chnl_net {int name; } ;


 int ASSERT_RTNL () ;
 struct chnl_net* netdev_priv (struct net_device*) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int chnl_net_init(struct net_device *dev)
{
 struct chnl_net *priv;
 ASSERT_RTNL();
 priv = netdev_priv(dev);
 strncpy(priv->name, dev->name, sizeof(priv->name));
 return 0;
}
