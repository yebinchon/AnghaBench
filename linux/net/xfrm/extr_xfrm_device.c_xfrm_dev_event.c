
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;





 int NOTIFY_DONE ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int xfrm_dev_down (struct net_device*) ;
 int xfrm_dev_feat_change (struct net_device*) ;
 int xfrm_dev_register (struct net_device*) ;

__attribute__((used)) static int xfrm_dev_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);

 switch (event) {
 case 128:
  return xfrm_dev_register(dev);

 case 129:
  return xfrm_dev_feat_change(dev);

 case 130:
  return xfrm_dev_down(dev);
 }
 return NOTIFY_DONE;
}
