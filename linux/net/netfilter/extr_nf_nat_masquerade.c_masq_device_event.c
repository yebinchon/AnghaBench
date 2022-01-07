
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ ifindex; } ;
struct net {int dummy; } ;


 unsigned long NETDEV_DOWN ;
 int NOTIFY_DONE ;
 struct net* dev_net (struct net_device const*) ;
 int device_cmp ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int nf_ct_iterate_cleanup_net (struct net*,int ,void*,int ,int ) ;

__attribute__((used)) static int masq_device_event(struct notifier_block *this,
        unsigned long event,
        void *ptr)
{
 const struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct net *net = dev_net(dev);

 if (event == NETDEV_DOWN) {





  nf_ct_iterate_cleanup_net(net, device_cmp,
       (void *)(long)dev->ifindex, 0, 0);
 }

 return NOTIFY_DONE;
}
