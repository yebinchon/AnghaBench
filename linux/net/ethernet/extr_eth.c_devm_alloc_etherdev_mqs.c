
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 struct net_device* alloc_etherdev_mqs (int,unsigned int,unsigned int) ;
 int devm_free_netdev ;
 int devres_add (struct device*,struct net_device**) ;
 struct net_device** devres_alloc (int ,int,int ) ;
 int devres_free (struct net_device**) ;

struct net_device *devm_alloc_etherdev_mqs(struct device *dev, int sizeof_priv,
        unsigned int txqs, unsigned int rxqs)
{
 struct net_device **dr;
 struct net_device *netdev;

 dr = devres_alloc(devm_free_netdev, sizeof(*dr), GFP_KERNEL);
 if (!dr)
  return ((void*)0);

 netdev = alloc_etherdev_mqs(sizeof_priv, txqs, rxqs);
 if (!netdev) {
  devres_free(dr);
  return ((void*)0);
 }

 *dr = netdev;
 devres_add(dev, dr);

 return netdev;
}
