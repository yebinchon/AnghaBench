
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ type; int ml_priv; } ;


 scalar_t__ ARPHRD_CAN ;

 int NOTIFY_DONE ;
 int WARN (int,char*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;

__attribute__((used)) static int can_notifier(struct notifier_block *nb, unsigned long msg,
   void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);

 if (dev->type != ARPHRD_CAN)
  return NOTIFY_DONE;

 switch (msg) {
 case 128:
  WARN(!dev->ml_priv,
       "No CAN mid layer private allocated, please fix your driver and use alloc_candev()!\n");
  break;
 }

 return NOTIFY_DONE;
}
