
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_sock {int queue_id; struct net_device* dev; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct TYPE_2__ {int (* ndo_xsk_wakeup ) (struct net_device*,int ,int ) ;} ;


 int XDP_WAKEUP_TX ;
 int stub1 (struct net_device*,int ,int ) ;

__attribute__((used)) static int xsk_zc_xmit(struct xdp_sock *xs)
{
 struct net_device *dev = xs->dev;

 return dev->netdev_ops->ndo_xsk_wakeup(dev, xs->queue_id,
            XDP_WAKEUP_TX);
}
