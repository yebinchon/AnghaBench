
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dsa_slave_priv {struct dsa_port* dp; } ;
struct dsa_port {int dummy; } ;


 struct dsa_slave_priv* netdev_priv (struct net_device const*) ;

__attribute__((used)) static inline struct dsa_port *dsa_slave_to_port(const struct net_device *dev)
{
 struct dsa_slave_priv *p = netdev_priv(dev);

 return p->dp;
}
