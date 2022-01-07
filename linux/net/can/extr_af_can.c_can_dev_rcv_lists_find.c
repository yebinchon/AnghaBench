
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {struct can_ml_priv* ml_priv; } ;
struct TYPE_2__ {struct can_dev_rcv_lists* rx_alldev_list; } ;
struct net {TYPE_1__ can; } ;
struct can_dev_rcv_lists {int dummy; } ;
struct can_ml_priv {struct can_dev_rcv_lists dev_rcv_lists; } ;



__attribute__((used)) static struct can_dev_rcv_lists *can_dev_rcv_lists_find(struct net *net,
       struct net_device *dev)
{
 if (dev) {
  struct can_ml_priv *ml_priv = dev->ml_priv;
  return &ml_priv->dev_rcv_lists;
 } else {
  return net->can.rx_alldev_list;
 }
}
