
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;


 int NETIF_F_HW_ESP ;
 int NOTIFY_DONE ;
 int dev_net (struct net_device*) ;
 int xfrm_dev_state_flush (int ,struct net_device*,int) ;

__attribute__((used)) static int xfrm_dev_down(struct net_device *dev)
{
 if (dev->features & NETIF_F_HW_ESP)
  xfrm_dev_state_flush(dev_net(dev), dev, 1);

 return NOTIFY_DONE;
}
