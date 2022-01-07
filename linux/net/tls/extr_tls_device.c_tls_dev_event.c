
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int features; TYPE_1__* tlsdev_ops; } ;
struct TYPE_2__ {int tls_dev_del; int tls_dev_add; int tls_dev_resync; } ;





 int NETIF_F_HW_TLS_RX ;
 int NETIF_F_HW_TLS_TX ;
 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int tls_device_down (struct net_device*) ;

__attribute__((used)) static int tls_dev_event(struct notifier_block *this, unsigned long event,
    void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);

 if (!dev->tlsdev_ops &&
     !(dev->features & (NETIF_F_HW_TLS_RX | NETIF_F_HW_TLS_TX)))
  return NOTIFY_DONE;

 switch (event) {
 case 128:
 case 129:
  if ((dev->features & NETIF_F_HW_TLS_RX) &&
      !dev->tlsdev_ops->tls_dev_resync)
   return NOTIFY_BAD;

  if (dev->tlsdev_ops &&
       dev->tlsdev_ops->tls_dev_add &&
       dev->tlsdev_ops->tls_dev_del)
   return NOTIFY_DONE;
  else
   return NOTIFY_BAD;
 case 130:
  return tls_device_down(dev);
 }
 return NOTIFY_DONE;
}
