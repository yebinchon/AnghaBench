
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct netdev_notifier_info {int dummy; } ;
struct in_ifaddr {struct in_device* ifa_dev; } ;
struct in_device {int dev; } ;


 int NETDEV_CHANGE ;
 unsigned long NETDEV_UP ;
 int NOTIFY_DONE ;
 int clip_device_event (struct notifier_block*,int ,struct netdev_notifier_info*) ;
 int netdev_notifier_info_init (struct netdev_notifier_info*,int ) ;

__attribute__((used)) static int clip_inet_event(struct notifier_block *this, unsigned long event,
      void *ifa)
{
 struct in_device *in_dev;
 struct netdev_notifier_info info;

 in_dev = ((struct in_ifaddr *)ifa)->ifa_dev;




 if (event != NETDEV_UP)
  return NOTIFY_DONE;
 netdev_notifier_info_init(&info, in_dev->dev);
 return clip_device_event(this, NETDEV_CHANGE, &info);
}
